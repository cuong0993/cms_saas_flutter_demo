import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$getProductPages {
  factory Variables$Query$getProductPages({required String name}) =>
      Variables$Query$getProductPages._({
        r'name': name,
      });

  Variables$Query$getProductPages._(this._$data);

  factory Variables$Query$getProductPages.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$getProductPages._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$getProductPages<Variables$Query$getProductPages>
      get copyWith => CopyWith$Variables$Query$getProductPages(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getProductPages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Query$getProductPages<TRes> {
  factory CopyWith$Variables$Query$getProductPages(
    Variables$Query$getProductPages instance,
    TRes Function(Variables$Query$getProductPages) then,
  ) = _CopyWithImpl$Variables$Query$getProductPages;

  factory CopyWith$Variables$Query$getProductPages.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getProductPages;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$getProductPages<TRes>
    implements CopyWith$Variables$Query$getProductPages<TRes> {
  _CopyWithImpl$Variables$Query$getProductPages(
    this._instance,
    this._then,
  );

  final Variables$Query$getProductPages _instance;

  final TRes Function(Variables$Query$getProductPages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Variables$Query$getProductPages._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getProductPages<TRes>
    implements CopyWith$Variables$Query$getProductPages<TRes> {
  _CopyWithStubImpl$Variables$Query$getProductPages(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$getProductPages {
  Query$getProductPages({
    this.ProductPage,
    this.$__typename = 'Query',
  });

  factory Query$getProductPages.fromJson(Map<String, dynamic> json) {
    final l$ProductPage = json['ProductPage'];
    final l$$__typename = json['__typename'];
    return Query$getProductPages(
      ProductPage: l$ProductPage == null
          ? null
          : Query$getProductPages$ProductPage.fromJson(
              (l$ProductPage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getProductPages$ProductPage? ProductPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ProductPage = ProductPage;
    _resultData['ProductPage'] = l$ProductPage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ProductPage = ProductPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ProductPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getProductPages || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ProductPage = ProductPage;
    final lOther$ProductPage = other.ProductPage;
    if (l$ProductPage != lOther$ProductPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getProductPages on Query$getProductPages {
  CopyWith$Query$getProductPages<Query$getProductPages> get copyWith =>
      CopyWith$Query$getProductPages(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getProductPages<TRes> {
  factory CopyWith$Query$getProductPages(
    Query$getProductPages instance,
    TRes Function(Query$getProductPages) then,
  ) = _CopyWithImpl$Query$getProductPages;

  factory CopyWith$Query$getProductPages.stub(TRes res) =
      _CopyWithStubImpl$Query$getProductPages;

  TRes call({
    Query$getProductPages$ProductPage? ProductPage,
    String? $__typename,
  });
  CopyWith$Query$getProductPages$ProductPage<TRes> get ProductPage;
}

class _CopyWithImpl$Query$getProductPages<TRes>
    implements CopyWith$Query$getProductPages<TRes> {
  _CopyWithImpl$Query$getProductPages(
    this._instance,
    this._then,
  );

  final Query$getProductPages _instance;

  final TRes Function(Query$getProductPages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ProductPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getProductPages(
        ProductPage: ProductPage == _undefined
            ? _instance.ProductPage
            : (ProductPage as Query$getProductPages$ProductPage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getProductPages$ProductPage<TRes> get ProductPage {
    final local$ProductPage = _instance.ProductPage;
    return local$ProductPage == null
        ? CopyWith$Query$getProductPages$ProductPage.stub(_then(_instance))
        : CopyWith$Query$getProductPages$ProductPage(
            local$ProductPage, (e) => call(ProductPage: e));
  }
}

class _CopyWithStubImpl$Query$getProductPages<TRes>
    implements CopyWith$Query$getProductPages<TRes> {
  _CopyWithStubImpl$Query$getProductPages(this._res);

  TRes _res;

  call({
    Query$getProductPages$ProductPage? ProductPage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getProductPages$ProductPage<TRes> get ProductPage =>
      CopyWith$Query$getProductPages$ProductPage.stub(_res);
}

const documentNodeQuerygetProductPages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getProductPages'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ProductPage'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'Name'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'contains'),
                    value: VariableNode(name: NameNode(value: 'name')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'items'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'MetaDescription'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'MetaKeywords'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'Name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'MetaTitle'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'TeaserText'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'PageImage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'Url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getProductPages _parserFn$Query$getProductPages(
        Map<String, dynamic> data) =>
    Query$getProductPages.fromJson(data);
typedef OnQueryComplete$Query$getProductPages = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getProductPages?,
);

class Options$Query$getProductPages
    extends graphql.QueryOptions<Query$getProductPages> {
  Options$Query$getProductPages({
    String? operationName,
    required Variables$Query$getProductPages variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getProductPages? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getProductPages? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$getProductPages(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetProductPages,
          parserFn: _parserFn$Query$getProductPages,
        );

  final OnQueryComplete$Query$getProductPages? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getProductPages
    extends graphql.WatchQueryOptions<Query$getProductPages> {
  WatchOptions$Query$getProductPages({
    String? operationName,
    required Variables$Query$getProductPages variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getProductPages? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetProductPages,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getProductPages,
        );
}

class FetchMoreOptions$Query$getProductPages extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getProductPages({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getProductPages variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetProductPages,
        );
}

extension ClientExtension$Query$getProductPages on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getProductPages>> query$getProductPages(
          Options$Query$getProductPages options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$getProductPages> watchQuery$getProductPages(
          WatchOptions$Query$getProductPages options) =>
      this.watchQuery(options);
  void writeQuery$getProductPages({
    required Query$getProductPages data,
    required Variables$Query$getProductPages variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetProductPages),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getProductPages? readQuery$getProductPages({
    required Variables$Query$getProductPages variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerygetProductPages),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getProductPages.fromJson(result);
  }
}

class Query$getProductPages$ProductPage {
  Query$getProductPages$ProductPage({
    this.items,
    this.$__typename = 'ProductPageOutput',
  });

  factory Query$getProductPages$ProductPage.fromJson(
      Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$getProductPages$ProductPage(
      items: (l$items as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getProductPages$ProductPage$items.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getProductPages$ProductPage$items?>? items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getProductPages$ProductPage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != null && lOther$items != null) {
      if (l$items.length != lOther$items.length) {
        return false;
      }
      for (int i = 0; i < l$items.length; i++) {
        final l$items$entry = l$items[i];
        final lOther$items$entry = lOther$items[i];
        if (l$items$entry != lOther$items$entry) {
          return false;
        }
      }
    } else if (l$items != lOther$items) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getProductPages$ProductPage
    on Query$getProductPages$ProductPage {
  CopyWith$Query$getProductPages$ProductPage<Query$getProductPages$ProductPage>
      get copyWith => CopyWith$Query$getProductPages$ProductPage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getProductPages$ProductPage<TRes> {
  factory CopyWith$Query$getProductPages$ProductPage(
    Query$getProductPages$ProductPage instance,
    TRes Function(Query$getProductPages$ProductPage) then,
  ) = _CopyWithImpl$Query$getProductPages$ProductPage;

  factory CopyWith$Query$getProductPages$ProductPage.stub(TRes res) =
      _CopyWithStubImpl$Query$getProductPages$ProductPage;

  TRes call({
    List<Query$getProductPages$ProductPage$items?>? items,
    String? $__typename,
  });
  TRes items(
      Iterable<Query$getProductPages$ProductPage$items?>? Function(
              Iterable<
                  CopyWith$Query$getProductPages$ProductPage$items<
                      Query$getProductPages$ProductPage$items>?>?)
          _fn);
}

class _CopyWithImpl$Query$getProductPages$ProductPage<TRes>
    implements CopyWith$Query$getProductPages$ProductPage<TRes> {
  _CopyWithImpl$Query$getProductPages$ProductPage(
    this._instance,
    this._then,
  );

  final Query$getProductPages$ProductPage _instance;

  final TRes Function(Query$getProductPages$ProductPage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getProductPages$ProductPage(
        items: items == _undefined
            ? _instance.items
            : (items as List<Query$getProductPages$ProductPage$items?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Query$getProductPages$ProductPage$items?>? Function(
                  Iterable<
                      CopyWith$Query$getProductPages$ProductPage$items<
                          Query$getProductPages$ProductPage$items>?>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) => e == null
              ? null
              : CopyWith$Query$getProductPages$ProductPage$items(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getProductPages$ProductPage<TRes>
    implements CopyWith$Query$getProductPages$ProductPage<TRes> {
  _CopyWithStubImpl$Query$getProductPages$ProductPage(this._res);

  TRes _res;

  call({
    List<Query$getProductPages$ProductPage$items?>? items,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;
}

class Query$getProductPages$ProductPage$items {
  Query$getProductPages$ProductPage$items({
    this.MetaDescription,
    this.MetaKeywords,
    this.Name,
    this.MetaTitle,
    this.TeaserText,
    this.PageImage,
    this.$__typename = 'ProductPage',
  });

  factory Query$getProductPages$ProductPage$items.fromJson(
      Map<String, dynamic> json) {
    final l$MetaDescription = json['MetaDescription'];
    final l$MetaKeywords = json['MetaKeywords'];
    final l$Name = json['Name'];
    final l$MetaTitle = json['MetaTitle'];
    final l$TeaserText = json['TeaserText'];
    final l$PageImage = json['PageImage'];
    final l$$__typename = json['__typename'];
    return Query$getProductPages$ProductPage$items(
      MetaDescription: (l$MetaDescription as String?),
      MetaKeywords: (l$MetaKeywords as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      Name: (l$Name as String?),
      MetaTitle: (l$MetaTitle as String?),
      TeaserText: (l$TeaserText as String?),
      PageImage: l$PageImage == null
          ? null
          : Query$getProductPages$ProductPage$items$PageImage.fromJson(
              (l$PageImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? MetaDescription;

  final List<String?>? MetaKeywords;

  final String? Name;

  final String? MetaTitle;

  final String? TeaserText;

  final Query$getProductPages$ProductPage$items$PageImage? PageImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MetaDescription = MetaDescription;
    _resultData['MetaDescription'] = l$MetaDescription;
    final l$MetaKeywords = MetaKeywords;
    _resultData['MetaKeywords'] = l$MetaKeywords?.map((e) => e).toList();
    final l$Name = Name;
    _resultData['Name'] = l$Name;
    final l$MetaTitle = MetaTitle;
    _resultData['MetaTitle'] = l$MetaTitle;
    final l$TeaserText = TeaserText;
    _resultData['TeaserText'] = l$TeaserText;
    final l$PageImage = PageImage;
    _resultData['PageImage'] = l$PageImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MetaDescription = MetaDescription;
    final l$MetaKeywords = MetaKeywords;
    final l$Name = Name;
    final l$MetaTitle = MetaTitle;
    final l$TeaserText = TeaserText;
    final l$PageImage = PageImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MetaDescription,
      l$MetaKeywords == null
          ? null
          : Object.hashAll(l$MetaKeywords.map((v) => v)),
      l$Name,
      l$MetaTitle,
      l$TeaserText,
      l$PageImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getProductPages$ProductPage$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$MetaDescription = MetaDescription;
    final lOther$MetaDescription = other.MetaDescription;
    if (l$MetaDescription != lOther$MetaDescription) {
      return false;
    }
    final l$MetaKeywords = MetaKeywords;
    final lOther$MetaKeywords = other.MetaKeywords;
    if (l$MetaKeywords != null && lOther$MetaKeywords != null) {
      if (l$MetaKeywords.length != lOther$MetaKeywords.length) {
        return false;
      }
      for (int i = 0; i < l$MetaKeywords.length; i++) {
        final l$MetaKeywords$entry = l$MetaKeywords[i];
        final lOther$MetaKeywords$entry = lOther$MetaKeywords[i];
        if (l$MetaKeywords$entry != lOther$MetaKeywords$entry) {
          return false;
        }
      }
    } else if (l$MetaKeywords != lOther$MetaKeywords) {
      return false;
    }
    final l$Name = Name;
    final lOther$Name = other.Name;
    if (l$Name != lOther$Name) {
      return false;
    }
    final l$MetaTitle = MetaTitle;
    final lOther$MetaTitle = other.MetaTitle;
    if (l$MetaTitle != lOther$MetaTitle) {
      return false;
    }
    final l$TeaserText = TeaserText;
    final lOther$TeaserText = other.TeaserText;
    if (l$TeaserText != lOther$TeaserText) {
      return false;
    }
    final l$PageImage = PageImage;
    final lOther$PageImage = other.PageImage;
    if (l$PageImage != lOther$PageImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getProductPages$ProductPage$items
    on Query$getProductPages$ProductPage$items {
  CopyWith$Query$getProductPages$ProductPage$items<
          Query$getProductPages$ProductPage$items>
      get copyWith => CopyWith$Query$getProductPages$ProductPage$items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getProductPages$ProductPage$items<TRes> {
  factory CopyWith$Query$getProductPages$ProductPage$items(
    Query$getProductPages$ProductPage$items instance,
    TRes Function(Query$getProductPages$ProductPage$items) then,
  ) = _CopyWithImpl$Query$getProductPages$ProductPage$items;

  factory CopyWith$Query$getProductPages$ProductPage$items.stub(TRes res) =
      _CopyWithStubImpl$Query$getProductPages$ProductPage$items;

  TRes call({
    String? MetaDescription,
    List<String?>? MetaKeywords,
    String? Name,
    String? MetaTitle,
    String? TeaserText,
    Query$getProductPages$ProductPage$items$PageImage? PageImage,
    String? $__typename,
  });
  CopyWith$Query$getProductPages$ProductPage$items$PageImage<TRes>
      get PageImage;
}

class _CopyWithImpl$Query$getProductPages$ProductPage$items<TRes>
    implements CopyWith$Query$getProductPages$ProductPage$items<TRes> {
  _CopyWithImpl$Query$getProductPages$ProductPage$items(
    this._instance,
    this._then,
  );

  final Query$getProductPages$ProductPage$items _instance;

  final TRes Function(Query$getProductPages$ProductPage$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MetaDescription = _undefined,
    Object? MetaKeywords = _undefined,
    Object? Name = _undefined,
    Object? MetaTitle = _undefined,
    Object? TeaserText = _undefined,
    Object? PageImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getProductPages$ProductPage$items(
        MetaDescription: MetaDescription == _undefined
            ? _instance.MetaDescription
            : (MetaDescription as String?),
        MetaKeywords: MetaKeywords == _undefined
            ? _instance.MetaKeywords
            : (MetaKeywords as List<String?>?),
        Name: Name == _undefined ? _instance.Name : (Name as String?),
        MetaTitle: MetaTitle == _undefined
            ? _instance.MetaTitle
            : (MetaTitle as String?),
        TeaserText: TeaserText == _undefined
            ? _instance.TeaserText
            : (TeaserText as String?),
        PageImage: PageImage == _undefined
            ? _instance.PageImage
            : (PageImage as Query$getProductPages$ProductPage$items$PageImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getProductPages$ProductPage$items$PageImage<TRes>
      get PageImage {
    final local$PageImage = _instance.PageImage;
    return local$PageImage == null
        ? CopyWith$Query$getProductPages$ProductPage$items$PageImage.stub(
            _then(_instance))
        : CopyWith$Query$getProductPages$ProductPage$items$PageImage(
            local$PageImage, (e) => call(PageImage: e));
  }
}

class _CopyWithStubImpl$Query$getProductPages$ProductPage$items<TRes>
    implements CopyWith$Query$getProductPages$ProductPage$items<TRes> {
  _CopyWithStubImpl$Query$getProductPages$ProductPage$items(this._res);

  TRes _res;

  call({
    String? MetaDescription,
    List<String?>? MetaKeywords,
    String? Name,
    String? MetaTitle,
    String? TeaserText,
    Query$getProductPages$ProductPage$items$PageImage? PageImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getProductPages$ProductPage$items$PageImage<TRes>
      get PageImage =>
          CopyWith$Query$getProductPages$ProductPage$items$PageImage.stub(_res);
}

class Query$getProductPages$ProductPage$items$PageImage {
  Query$getProductPages$ProductPage$items$PageImage({
    this.Url,
    this.$__typename = 'ContentModelReference',
  });

  factory Query$getProductPages$ProductPage$items$PageImage.fromJson(
      Map<String, dynamic> json) {
    final l$Url = json['Url'];
    final l$$__typename = json['__typename'];
    return Query$getProductPages$ProductPage$items$PageImage(
      Url: (l$Url as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? Url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Url = Url;
    _resultData['Url'] = l$Url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Url = Url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getProductPages$ProductPage$items$PageImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$Url = Url;
    final lOther$Url = other.Url;
    if (l$Url != lOther$Url) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getProductPages$ProductPage$items$PageImage
    on Query$getProductPages$ProductPage$items$PageImage {
  CopyWith$Query$getProductPages$ProductPage$items$PageImage<
          Query$getProductPages$ProductPage$items$PageImage>
      get copyWith =>
          CopyWith$Query$getProductPages$ProductPage$items$PageImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getProductPages$ProductPage$items$PageImage<
    TRes> {
  factory CopyWith$Query$getProductPages$ProductPage$items$PageImage(
    Query$getProductPages$ProductPage$items$PageImage instance,
    TRes Function(Query$getProductPages$ProductPage$items$PageImage) then,
  ) = _CopyWithImpl$Query$getProductPages$ProductPage$items$PageImage;

  factory CopyWith$Query$getProductPages$ProductPage$items$PageImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getProductPages$ProductPage$items$PageImage;

  TRes call({
    String? Url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getProductPages$ProductPage$items$PageImage<TRes>
    implements
        CopyWith$Query$getProductPages$ProductPage$items$PageImage<TRes> {
  _CopyWithImpl$Query$getProductPages$ProductPage$items$PageImage(
    this._instance,
    this._then,
  );

  final Query$getProductPages$ProductPage$items$PageImage _instance;

  final TRes Function(Query$getProductPages$ProductPage$items$PageImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getProductPages$ProductPage$items$PageImage(
        Url: Url == _undefined ? _instance.Url : (Url as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getProductPages$ProductPage$items$PageImage<TRes>
    implements
        CopyWith$Query$getProductPages$ProductPage$items$PageImage<TRes> {
  _CopyWithStubImpl$Query$getProductPages$ProductPage$items$PageImage(
      this._res);

  TRes _res;

  call({
    String? Url,
    String? $__typename,
  }) =>
      _res;
}
