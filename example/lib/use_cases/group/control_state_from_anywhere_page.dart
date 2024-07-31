import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ControlStatePage extends StatelessWidget {
  ControlStatePage({Key? key}) : super(key: key);
  final GlobalKey<ExpansionTileCoreState> key0 = GlobalKey();
  final GlobalKey<ExpansionTileCoreState> key1 = GlobalKey();
  final GlobalKey<ExpansionTileCoreState> key3 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expand From Anywhere Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Control expand/collapse state of an item from anywhere',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700])),
                  const SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          key0.currentState?.toggle();
                        },
                        color: Colors.lightBlue,
                        child: const Text('Toggle item 0'),
                      ),
                      MaterialButton(
                        onPressed: () {
                          key1.currentState?.collapse();
                        },
                        color: Colors.lightBlue,
                        child: const Text('collapse item 1 if expanding'),
                      ),
                      MaterialButton(
                        onPressed: () {
                          key3.currentState?.expand();
                        },
                        color: Colors.lightBlue,
                        child: const Text('expand item 2 if collapsing'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildContent(context),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return ExpansionTileGroup(
      toggleType: ToggleType.none,
      spaceBetweenItem: 8,
      onExpansionItemChanged: (index, isExpanded) {},
      children: [
        ExpansionTileItem.outlined(
          expansionKey: key0,
          title: const Text('ExpansionTile 0'),
          children: [
            Material(
              child: InkWell(
                onTap: () {},
                child: const Text(
                    ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ),
            ),
          ],
        ),
        ExpansionTileBorderItem(
          expansionKey: key1,
          initiallyExpanded: true,
          title: const Text('ExpansionTile 1'),
          expendedBorderColor: Colors.red,
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        ExpansionTileLeafItem(
          initiallyExpanded: false,
          title: const Text('ExpansionTile 2'),
          expendedBorderColor: Colors.blue,
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        ExpansionTileItem.leaf(
          expansionKey: key3,
          initiallyExpanded: false,
          title: const Text('ExpansionTile 3'),
          expendedBorderColor: Colors.green,
          isReverseLeaf: true,
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const ExpansionTileWithoutBorderItem(
          initiallyExpanded: false,
          title: Text('ExpansionTile 4'),
          expendedBorderColor: Colors.green,
          children: [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const ExpansionTileItem.flat(
          initiallyExpanded: false,
          title: Text('ExpansionTile 5'),
          expendedBorderColor: Colors.green,
          children: [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
      ],
    );
  }
}