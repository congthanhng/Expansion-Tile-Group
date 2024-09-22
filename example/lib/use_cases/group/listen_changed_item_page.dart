import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ListenChangedItemPage extends StatefulWidget {
  const ListenChangedItemPage({Key? key}) : super(key: key);

  @override
  State<ListenChangedItemPage> createState() => _ListenChangedItemPageState();
}

class _ListenChangedItemPageState extends State<ListenChangedItemPage> {
  final GlobalKey<ExpansionTileCoreState> key0 = GlobalKey();

  int currentItem = 0;

  bool isCurrentExpanded = false;

  String setNoti(int int, bool isExpanded) =>
      'ExpansionTile $int is ${isExpanded ? 'expanded' : 'collapsed'}';

  String currentNoti = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item in group changed'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Listen changed of any item in group',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(currentNoti,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                  _buildContent(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ExpansionTileGroup(
          toggleType: ToggleType.none,
          spaceBetweenItem: 8,
          onItemChanged: (index, isExpanded) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height - 150,
                  left: 20,
                  right: 20),
              content: Text(
                  'ExpansionTile $index is ${isExpanded ? 'expanded' : 'collapsed'}'),
            ));
            currentItem = index;
            isCurrentExpanded = isExpanded;
          },
          children: [
            ExpansionTileOutlined(
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
            const ExpansionTileOutlined(
              title: Text('ExpansionTile 1'),
              expendedBorderColor: Colors.red,
              children: [
                Text(
                    '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
            const ExpansionTileOutlined(
              title: Text('ExpansionTile 2'),
              expendedBorderColor: Colors.green,
              children: [
                Text(
                    '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
            const ExpansionTileOutlined(
              title: Text('ExpansionTile 3'),
              expendedBorderColor: Colors.blue,
              children: [
                Text(
                    '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
