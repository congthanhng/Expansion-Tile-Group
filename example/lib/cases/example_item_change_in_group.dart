import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleItemChangeInGroupPage extends StatefulWidget {
  const ExampleItemChangeInGroupPage({Key? key}) : super(key: key);

  @override
  State<ExampleItemChangeInGroupPage> createState() =>
      _ExampleItemChangeInGroupPageState();
}

class _ExampleItemChangeInGroupPageState
    extends State<ExampleItemChangeInGroupPage> {
  final GlobalKey<ExpansionTileCustomState> key0 = GlobalKey();

  int currentItem = 0;

  bool isCurrentExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item in group changed'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'current INDEX: $currentItem \nisExpanded: $isCurrentExpanded',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTileGroup(
                toggleType: ToggleType.none,
                spaceBetweenItem: 8,
                onExpansionItemChanged: (index, isExpanded) {
                  setState(() {
                    currentItem = index;
                    isCurrentExpanded = isExpanded;
                  });
                },
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
                    title: const Text('ExpansionTile 2'),
                    expendedBorderColor: Colors.green,
                    children: const [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileBorderItem(
                    initiallyExpanded: false,
                    title: const Text('ExpansionTile 3'),
                    expendedBorderColor: Colors.blue,
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
