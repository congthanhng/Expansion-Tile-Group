import 'package:expansion_tile_group_example/route_named.dart';
import 'package:expansion_tile_group_example/use_cases/fantasy/fantasy_page.dart';
import 'package:expansion_tile_group_example/use_cases/group/custom_group_with_controller.dart';
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
                builder: (context) => const ItemFeaturesPage());
          case RouteNamed.listenGroupItemChanged:
            return MaterialPageRoute(
                builder: (context) => const ListenChangedItemPage());
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
          case RouteNamed.expandAlwaysCurrent:
            return MaterialPageRoute(
                builder: (context) => const ExpandAlwaysCurrentPage());
            case RouteNamed.customGroupWithController:
            return MaterialPageRoute(
                builder: (context) => const CustomGroupWithController());
          case RouteNamed.fantasyPage:
            return MaterialPageRoute(builder: (context) => const FantasyPage());
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
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildFantasySection(context),
                _buildItemSection(context),
                _buildGroupSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFantasySection(BuildContext context) {
    return _buildSection(
      context,
      title: 'Fantasy Items',
      body: _buildButton(
        context,
        title: 'Check out',
        routeName: RouteNamed.fantasyPage,
      ),
    );
  }

  Widget _buildItemSection(BuildContext context) {
    return _buildSection(
      context,
      title: 'Item Features',
      description: 'Features can be explored are:\n'
          '- Show all custom types\n'
          '- Hide subtitle on expanded view\n'
          '- Remove completely default vertical title padding of ExpansionTile\n'
          '- Remove completely trailing of ExpansionTile\n'
          '- Force behavior to ignore until a task completed\n'
          '- Trailing icon now can be changed with keeping rotate animation\n'
          '- Change state of an ExpansionTileItem from anywhere\n',
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
      title: 'Group features',
      body: Column(
        children: [
          const Divider(),
          _buildRow(
            context,
            title: 'ToggleType: expandOnlyCurrent',
            // subtitle: 'Expand only current item in group',
            routeName: RouteNamed.expandOnlyCurrent,
          ),
          const Divider(),
          _buildRow(
            context,
            title: 'ToggleType: expandAlwaysCurrent',
            routeName: RouteNamed.expandAlwaysCurrent,
          ),
          const Divider(),
          _buildRow(
            context,
            title: 'ToggleType: expandAll',
            routeName: RouteNamed.expandAll,
          ),
          const Divider(),
          _buildRow(
            context,
            title: 'ToggleType: collapseAll',
            routeName: RouteNamed.collapseAll,
          ),
          const Divider(),
          _buildRow(
            context,
            title: 'ToggleType: expandAllOrCollapseAll',
            routeName: RouteNamed.expandOrCollapseAll,
          ),
          const Divider(),
          _buildRow(
            context,
            title: 'Listen changed of any item in group',
            routeName: RouteNamed.listenGroupItemChanged,
          ),

          const Divider(),
          const Text('CUSTOM GROUP', style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold),),
          _buildRow(
            context,
            title: 'Custom Group with controller',
            routeName: RouteNamed.customGroupWithController,
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title, String? description, required Widget body}) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.red)),
            if (description != null)
              Text(description,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            body
          ],
        ),
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
