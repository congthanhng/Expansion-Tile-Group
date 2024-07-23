import 'package:expansion_tile_group_example/route_named.dart';
import 'package:flutter/material.dart';

import 'use_cases/use_cases.dart';

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
            _buildItemSection(context),
            _buildGroupSection(context),

            // _buildButton(
            //   context,
            //   title: 'Ignore behavior until a task completed',
            //   routeName: RouteNamed.ignoreBehavior,
            // ),
            // _buildButton(
            //   context,
            //   title: 'Hide Subtitle on Expanded',
            //   routeName: RouteNamed.hideSubtitle,
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemSection(BuildContext context) {
    return _buildSection(
      context,
      title: 'Powerful Custom Items',
      description: 'Features can be explored are:\n'
          '- Show all custom types\n'
          '- Hide subtitle on expanded view\n'
          '- Remove completely default vertical title padding of ExpansionTile\n'
          '- Remove completely trailing of ExpansionTile\n'
          '- Force behavior to ignore until a task completed\n'
          '- Trailing icon now can be changed with keeping rotate animation\n',
      body: _buildButton(
        context,
        title: 'See Demo',
        routeName: RouteNamed.allCustomItems,
      ),
    );
  }

  Widget _buildGroupSection(BuildContext context) {
    return _buildSection(
      context,
      title: 'Group Items Management & Behaviors',
      body: Column(
        children: [
          _buildRow(
            context,
            title: 'expandOnlyCurrent:',
            // subtitle: 'Expand only current item in group',
            routeName: RouteNamed.expandOnlyCurrent,
          ),
          _buildRow(
            context,
            title: 'expandAlwaysCurrent:',
            routeName: RouteNamed.expandAlwaysCurrent,
          ),
          _buildRow(
            context,
            title: 'expandAll:',
            routeName: RouteNamed.expandAll,
          ),
          _buildRow(
            context,
            title: 'collapseAll:',
            routeName: RouteNamed.collapseAll,
          ),
          _buildRow(
            context,
            title: 'expandAllOrCollapseAll:',
            routeName: RouteNamed.expandOrCollapseAll,
          ),
          _buildRow(
            context,
            title: 'Listen changed of any item in group:',
            routeName: RouteNamed.listenGroupItemChanged,
          ),
          _buildRow(
            context,
            title: 'Control expand/collapse state of an item from anywhere:',
            routeName: RouteNamed.controlState,
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title, String? description, required Widget body}) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.green)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          if (description != null)
            Text(description,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          body
        ],
      ),
    );
  }

  Widget _buildRow(BuildContext context,
      {String? title, String? subtitle, required String routeName}) {
    return Row(
      children: [
        Expanded(
          child: Text(title ?? '',
              style: const TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black)),
        ),
        Text(subtitle ?? '',
            style: TextStyle(fontSize: 12, color: Colors.grey[700])),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, routeName);
          },
          child: const Text('See Demo'),
        )
      ],
    );
  }

  Widget _buildButton(BuildContext context,
      {required String title, required String routeName}) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }
}
