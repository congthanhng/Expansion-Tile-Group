import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class KeepStatePage extends StatefulWidget {
  const KeepStatePage({super.key});

  @override
  State<KeepStatePage> createState() => _KeepStatePageState();
}

class _KeepStatePageState extends State<KeepStatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keep State Example'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  _buildGroupLayout(
                    context,
                    title: 'Group 1: keepState: true',
                    child: ExpansionTileGroup(
                      spaceBetweenItem: 16,
                      keepState: true,
                      children: [
                        _buildExpansionItem(context),
                        _buildExpansionItem(context),
                        _buildExpansionItem(context),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  _buildGroupLayout(
                    context,
                    title: 'Group 2: keepState: false',
                    child: ExpansionTileGroup(
                      spaceBetweenItem: 16,
                      keepState: false,
                      children: [
                        _buildExpansionItem(context),
                        _buildExpansionItem(context),
                        _buildExpansionItem(context),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Try to expand some items of each group and then tap to below button, you can see the different',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Rebuild this Page')),
            ],
          ),
        ),
      ),
    );
  }

  ExpansionTileItem _buildExpansionItem(BuildContext context,
      {bool isExpanded = false}) {
    return ExpansionTileItem.outlined(
      initiallyExpanded: isExpanded,
      title: const Text('ExpansionTile Item'),
      children: [
        Material(
          child: InkWell(
            onTap: () {},
            child: const Text(
                ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ),
        ),
      ],
    );
  }

  Widget _buildGroupLayout(BuildContext context,
      {required String title, required Widget child}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 16,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
