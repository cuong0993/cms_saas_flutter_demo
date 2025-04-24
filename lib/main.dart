import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

import 'get_product_page.graphql.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SearchPage());
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Query$getProductPages$ProductPage$items?> _results = [];
  TextEditingController controller = TextEditingController();

  Future<void> _search(String query) async {
    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: AuthLink(
        getToken: () async =>
            'epi-single eBrGunULiC5TziTCtiOLEmov2LijBf30obh0KmhcBlyTktGZ',
      ).concat(HttpLink('https://cg.optimizely.com/content/v2')),
    );
    final response = await client.query$getProductPages(
      Options$Query$getProductPages(
        variables: Variables$Query$getProductPages(name: query),
      ),
    );
    final items = response.parsedData?.ProductPage?.items;
    if (items != null && items.isNotEmpty) {
      setState(() {
        _results = items;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Optimizely Alloy products')),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _search(controller.text);
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _results.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    "(${_results[index]!.PageImage!.Url!}) ${_results[index]!.Name!}",
                  ),
                  subtitle: Text(_results[index]!.MetaDescription!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
