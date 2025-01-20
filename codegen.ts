import type { CodegenConfig } from '@graphql-codegen/cli'

const config: CodegenConfig = {
  schema: "lib/schema.graphql",
  generates: {
    'lib/data/models/app_models.dart': {
      plugins: {
        'flutter-freezed': {
          customScalars: {
            Date: 'DateTime',
            Bool: 'bool'
          }
        }
      }
    }
  }
}
export default config