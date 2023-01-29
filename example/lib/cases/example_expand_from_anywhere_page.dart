import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleExpandFromAnywherePage extends StatelessWidget {
  ExampleExpandFromAnywherePage({Key? key}) : super(key: key);
  final GlobalKey<ExpansionTileCustomState> key0 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expand From Anywhere Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTileGroup(
                toggleType: ToggleType.none,
                spaceBetweenItem: 8,
                onExpansionItemChanged: (index, isExpanded) {},
                children: [
                  ExpansionTileBorderItem(
                    title: const Text('ExpansionTile 0'),
                    expansionKey: key0,
                    // childrenPadding: EdgeInsets.zero,
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
                    initiallyExpanded: true,
                    title: const Text('ExpansionTile 1'),
                    expendedBorderColor: Colors.red,
                    children: const [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileBorderItem(
                    initiallyExpanded: false,
                    title: const Text('ExpansionTile 1'),
                    expendedBorderColor: Colors.red,
                    children: const [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileBorderItem(
                    initiallyExpanded: false,
                    title: const Text('ExpansionTile 1'),
                    expendedBorderColor: Colors.red,
                    children: const [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                key0.currentState?.expand();
              },
              color: Colors.grey,
              child: const Text('Expand item 0'),
            )
          ],
        ),
      ),
    );
  }
}
