import 'package:expansion_tile_group_example/cases/all_custom_items_page.dart';
import 'package:expansion_tile_group_example/cases/collapse_all_page.dart';
import 'package:expansion_tile_group_example/cases/expand_or_collapse_all_page.dart';
import 'package:expansion_tile_group_example/cases/expand_all_page.dart';
import 'package:expansion_tile_group_example/cases/expand_always_current_page.dart';
import 'package:expansion_tile_group_example/cases/control_state_from_anywhere_page.dart';
import 'package:expansion_tile_group_example/cases/expand_only_current_page.dart';
import 'package:expansion_tile_group_example/cases/hide_subtitle_on_expanded.dart';
import 'package:expansion_tile_group_example/cases/ignore_behavior_page.dart';
import 'package:expansion_tile_group_example/cases/listen_group_item_changed_page.dart';
import 'package:expansion_tile_group_example/route_named.dart';
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
          case RouteNamed.homePage:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case RouteNamed.allCustomItems:
            return MaterialPageRoute(
                builder: (context) => const AllCustomItemsPage());
          case RouteNamed.controlState:
            return MaterialPageRoute(builder: (context) => ControlStatePage());
          case RouteNamed.listenGroupItemChanged:
            return MaterialPageRoute(
                builder: (context) => const ListenGroupItemChangedPage());
          case RouteNamed.expandOnlyCurrent:
            return MaterialPageRoute(
                builder: (context) => const ExpandOnlyCurrentPage());
          case RouteNamed.collapseAll:
            return MaterialPageRoute(
                builder: (context) => const CollapseAllPage());
          case RouteNamed.expandAll:
            return MaterialPageRoute(
                builder: (context) => const ExpandAllPage());
          case RouteNamed.expandOrCollapseAll:
            return MaterialPageRoute(
                builder: (context) => const ExpandAndCollapseAllPage());
          case RouteNamed.ignoreBehavior:
            return MaterialPageRoute(
                builder: (context) => const IgnoreBehaviorPage());
          case RouteNamed.expandAlwaysCurrent:
            return MaterialPageRoute(
                builder: (context) => const ExpandAlwaysCurrentPage());
          case RouteNamed.hideSubtitle:
            return MaterialPageRoute(
                builder: (context) => const HideSubtitleOnExpandedPage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
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
                Navigator.pushNamed(context, RouteNamed.allCustomItems);
              },
              color: Colors.pink,
              child: const Text('Custom Items'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.controlState);
              },
              color: Colors.blueGrey,
              child: const Text('Control state from anywhere'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.listenGroupItemChanged);
              },
              color: Colors.blueGrey,
              child: const Text('Listen items changed in a group'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.expandOnlyCurrent);
              },
              color: Colors.blue,
              child: const Text('Expand only current item in the group'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.expandAlwaysCurrent);
              },
              color: Colors.blue,
              child: const Text(
                  'Always Expand only current item in the group without collapsing when tapping again',
                  textAlign: TextAlign.center),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.expandAll);
              },
              color: Colors.blue,
              child: const Text('Expand all items in group when one collapsing is tapped'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.collapseAll);
              },
              color: Colors.blue,
              child:
                  const Text('Collapse all items in group when one expanding is tapped'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.expandOrCollapseAll);
              },
              color: Colors.blue,
              child: const Text('Toggle all items in group when one is tapped'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.ignoreBehavior);
              },
              color: Colors.yellow,
              child: const Text('Ignore behavior until a task completed'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamed.hideSubtitle);
              },
              color: Colors.yellow,
              child: const Text('Hide Subtitle on Expanded'),
            ),
          ],
        ),
      ),
    );
  }
}
