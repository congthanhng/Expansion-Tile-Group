import 'package:expansion_tile_group_example/cases/example_collapse_all_item.dart';
import 'package:expansion_tile_group_example/cases/example_expand_all_and_collapse_all.dart';
import 'package:expansion_tile_group_example/cases/example_expand_all_item.dart';
import 'package:expansion_tile_group_example/cases/example_expand_from_anywhere_page.dart';
import 'package:expansion_tile_group_example/cases/example_expand_only_one.dart';
import 'package:expansion_tile_group_example/cases/example_force_behavior.dart';
import 'package:expansion_tile_group_example/cases/example_item_change_in_group.dart';
import 'package:expansion_tile_group_example/cases/example_all_item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/three':
            return MaterialPageRoute(
                builder: (context) => const ExampleAllItemPage());
          case '/four':
            return MaterialPageRoute(
                builder: (context) => ExampleExpandFromAnywherePage());
          case '/five':
            return MaterialPageRoute(
                builder: (context) => const ExampleItemChangeInGroupPage());

          case '/six':
            return MaterialPageRoute(
                builder: (context) => const ExampleOnlyCurrentItemPage());

          case '/seven':
            return MaterialPageRoute(
                builder: (context) => const ExampleCollapseAllItemPage());

          case '/eight':
            return MaterialPageRoute(
                builder: (context) => const ExampleExpandAllItemPage());
          case '/nine':
            return MaterialPageRoute(
                builder: (context) =>
                    const ExampleExpandAllAndCollapseAllItemPage());
          case '/ten':
            return MaterialPageRoute(
                builder: (context) =>
                const ExampleForceBehaviorPage());
          default: return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile Group Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/three');
              },
              color: Colors.pink,
              child: const Text('Example for Custom Expansion Item'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/four');
              },
              color: Colors.blueGrey,
              child: const Text('Example for Can expand any item in any where'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/five');
              },
              color: Colors.blueGrey,
              child: const Text('Example for Listen the group item changed'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/six');
              },
              color: Colors.blue,
              child: const Text('Example Expand only current'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/seven');
              },
              color: Colors.blue,
              child: const Text('Example Collapse all item'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/eight');
              },
              color: Colors.blue,
              child: const Text('Example for Expand All item'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nine');
              },
              color: Colors.blue,
              child: const Text('Example for Expand All and Collapse ALl item'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ten');
              },
              color: Colors.yellow,
              child: const Text('Example for One item'),
            ),
          ],
        ),
      ),
    );
  }
}
