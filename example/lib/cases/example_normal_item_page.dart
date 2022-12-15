import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleNormalItemPage extends StatelessWidget {
  const ExampleNormalItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Item Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTileGroup(
                toggleType: ToggleType.none,
                spaceBetweenItem: 16,
                onExpansionItemChanged: (index, isExpanded) {},
                children: [
                  const ExpansionTileItem(
                    title: Text('ExpansionTile 0'),
                    expendedBorderColor: Colors.blue,
                    children: [
                      Text(
                          ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  const ExpansionTileItem(
                    initiallyExpanded: true,
                    title: Text('ExpansionTile 1'),
                    isHasBottomBorder: true,
                    isHasRightBorder: true,
                    isHasTopBorder: true,
                    isHasLeftBorder: true,
                    expendedBorderColor: Colors.red,
                    children: [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileItem(
                    initiallyExpanded: false,
                    title: const Text('ExpansionTile 2'),
                    backgroundColor: Colors.red,
                    collapsedBackgroundColor: Colors.yellow,
                    borderRadius: BorderRadius.circular(8),
                    textColor: Colors.white,
                    isHasLeftBorder: true,
                    isHasTopBorder: true,
                    isHasRightBorder: true,
                    isHasBottomBorder: true,
                    collapsedBorderColor: Colors.pink,
                    expendedBorderColor: Colors.blue,
                    iconColor: Colors.greenAccent,
                    collapsedIconColor: Colors.green,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    children: const [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileItem(
                    initiallyExpanded: false,
                    title: const Text('ExpansionTile 3'),
                    backgroundColor: Colors.greenAccent,
                    isHasTopBorder: false,
                    isHasBottomBorder: false,
                    collapsedBackgroundColor: Colors.greenAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    children: const [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  const ExpansionTileItem(
                    initiallyExpanded: false,
                    title: Text('ExpansionTile 3'),
                    isHasTopBorder: false,
                    isHasBottomBorder: false,
                    backgroundColor: Colors.blueAccent,
                    collapsedBackgroundColor: Colors.blueAccent,
                    collapsedIconColor: Colors.green,
                    iconColor: Colors.red,
                    textColor: Colors.white,
                    collapsedTextColor: Colors.red,
                    children: [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
