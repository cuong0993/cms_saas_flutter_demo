#!/usr/bin/env kotlin
@file:Repository("https://repo.maven.apache.org/maven2")
@file:DependsOn("com.fasterxml.jackson.core:jackson-core:2.18.3")
@file:DependsOn("com.graphql-java:graphql-java:22.3")
@file:DependsOn("io.ktor:ktor-client-content-negotiation-jvm:3.1.1")
@file:DependsOn("io.ktor:ktor-client-java-jvm:3.1.1")
@file:DependsOn("io.ktor:ktor-serialization-jackson-jvm:3.1.1")

import graphql.introspection.IntrospectionResultToSchema
import graphql.schema.idl.SchemaPrinter
import io.ktor.client.HttpClient
import io.ktor.client.call.body
import io.ktor.client.engine.java.Java
import io.ktor.client.plugins.contentnegotiation.ContentNegotiation
import io.ktor.client.request.accept
import io.ktor.client.request.headers
import io.ktor.client.request.post
import io.ktor.client.request.setBody
import io.ktor.http.ContentType
import io.ktor.http.contentType
import io.ktor.serialization.jackson.jackson
import kotlinx.coroutines.runBlocking
import java.io.File

val client = HttpClient(Java) { install(ContentNegotiation) { jackson() } }

runBlocking {
    val introspectionResult =
        client
            .post("https://cg.optimizely.com/content/v2") {
                contentType(ContentType.Application.Json)
                accept(ContentType.Application.Json)
                headers {
                    append(
                        "authorization",
                        "epi-single eBrGunULiC5TziTCtiOLEmov2LijBf30obh0KmhcBlyTktGZ",
                    )
                }
                setBody(
                    mapOf(
                        "query" to
                            """
query IntrospectionQuery {
  __schema {
    queryType { 
      name 
    }
    mutationType { 
      name 
    }
    subscriptionType { 
      name 
    }
    types {
      ...FullType
    }
    directives {
      name
      description
      locations
      args {
        ...InputValue
      }
    }
  }
}

fragment FullType on __Type {
  kind
  name
  description
  fields(includeDeprecated: true) {
    name
    description
    args {
      ...InputValue
    }
    type {
      ...TypeRef
    }
    isDeprecated
    deprecationReason
  }
  inputFields {
    ...InputValue
  }
  interfaces {
    ...TypeRef
  }
  enumValues(includeDeprecated: true) {
    name
    description
    isDeprecated
    deprecationReason
  }
  possibleTypes {
    ...TypeRef
  }
}

fragment InputValue on __InputValue {
  name
  description
  type { 
    ...TypeRef 
  }
  defaultValue
}

fragment TypeRef on __Type {
  kind
  name
  ofType {
    kind
    name
    ofType {
      kind
      name
      ofType {
        kind
        name
        ofType {
          kind
          name
          ofType {
            kind
            name
            ofType {
              kind
              name
              ofType {
                kind
                name
                ofType {
                  kind
                  name
                }
              }
            }
          }
        }
      }
    }
  }
}
                            """.trimIndent(),
                        "operationName" to "IntrospectionQuery",
                    ),
                )
            }.body<Map<String, Any?>>()

    val jsonObject = introspectionResult["data"] as? Map<String, Any?>
    val graphQLDocument = IntrospectionResultToSchema().createSchemaDefinition(jsonObject)
    val options =
        SchemaPrinter.Options
            .defaultOptions()
            .includeScalarTypes(true)
            .includeSchemaDefinition(true)
            .includeDirectives(true)
    val schemaContent = SchemaPrinter(options).print(graphQLDocument)
    File("lib/schema.graphql").writeText(schemaContent)
}
