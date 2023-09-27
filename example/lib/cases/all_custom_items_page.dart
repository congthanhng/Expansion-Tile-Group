import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class AllCustomItemsPage extends StatelessWidget {
  const AllCustomItemsPage({Key? key}) : super(key: key);

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
                  const ExpansionTileWithoutBorderItem(
                    title: Text('ExpansionTileWithoutBorderItem'),
                    children: [
                      Text(
                          '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileBorderItem(
                    isEnableExpanded: false,
                    title: const Text('Item with isEnableExpanded = false'),
                    children: const [
                      Text(
                          ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileItem(
                    title: const Text('Item without TrailingIcon, Expanded border, Title border radius'),
                    expendedBorderColor: Colors.blue,
                    isHasTrailing: false,
                    borderRadius: BorderRadius.circular(12),
                    isHasBottomBorder: true,
                    isHasTopBorder: true,
                    isHasRightBorder: true,
                    isHasLeftBorder: true,
                    children: const [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                            'Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. '),
                      ),
                    ],
                  ),
                  const ExpansionTileItem(
                    title: Text('Item without expanded Top border'),
                    isHasBottomBorder: true,
                    isHasRightBorder: true,
                    isHasTopBorder: false,
                    isHasLeftBorder: true,
                    expendedBorderColor: Colors.red,
                    children: [
                      Text(
                          '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileItem(
                    initiallyExpanded: false,
                    title: const Text('Item with shadow, border - bg - text color (different between expand and collapse)'),
                    backgroundColor: Colors.red,
                    collapsedBackgroundColor: Colors.yellow,
                    textColor: Colors.white,
                    collapsedBorderColor: Colors.pink,
                    expendedBorderColor: Colors.blue,
                    iconColor: Colors.greenAccent,
                    collapsedIconColor: Colors.green,
                    isHasLeftBorder: true,
                    isHasTopBorder: true,
                    isHasRightBorder: true,
                    isHasBottomBorder: true,
                    borderRadius: BorderRadius.circular(8),
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
                    title: const Text('Item with custom border side radius'),
                    backgroundColor: Colors.red,
                    collapsedBackgroundColor: Colors.yellow,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
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
                    initiallyExpanded: true,
                    title: const Text('Item with default state is expand'),
                    backgroundColor: Colors.greenAccent,
                    isHasTopBorder: true,
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
                    title: Text('ExpansionTile 9'),
                    isHasTopBorder: false,
                    isHasBottomBorder: false,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
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
                  const ExpansionTileItem(
                    initiallyExpanded: false,
                    title: Text('Item without default vertical padding'),
                    isHasTopBorder: false,
                    isHasBottomBorder: false,
                    isDefaultVerticalPadding: false,
                    tilePadding: EdgeInsets.zero,
                    backgroundColor: Colors.blueAccent,
                    collapsedBackgroundColor: Colors.blueAccent,
                    collapsedIconColor: Colors.green,
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    collapsedTextColor: Colors.yellow,
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
