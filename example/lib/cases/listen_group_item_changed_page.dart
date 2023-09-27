import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ListenGroupItemChangedPage extends StatefulWidget {
  const ListenGroupItemChangedPage({Key? key}) : super(key: key);

  @override
  State<ListenGroupItemChangedPage> createState() =>
      _ListenGroupItemChangedPageState();
}

class _ListenGroupItemChangedPageState
    extends State<ListenGroupItemChangedPage> {
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTileGroup(
            toggleType: ToggleType.none,
            spaceBetweenItem: 8,
            onExpansionItemChanged: (index, isExpanded) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height - 100,
                    left: 20,
                    right: 20),
                content: Text(
                    'You have tapped on item: $index with expanded: $isExpanded'),
              ));
              currentItem = index;
              isCurrentExpanded = isExpanded;
            },
            children: [
              ExpansionTileBorderItem(
                title: const Text('ExpansionTile 0'),
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
                title: const Text('ExpansionTile 1'),
                expendedBorderColor: Colors.red,
                children: const [
                  Text(
                      '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                ],
              ),
              ExpansionTileBorderItem(
                title: const Text('ExpansionTile 2'),
                expendedBorderColor: Colors.green,
                children: const [
                  Text(
                      '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                ],
              ),
              ExpansionTileBorderItem(
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
      ),
    );
  }
}
