import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class CollapseAllPage extends StatelessWidget {
  const CollapseAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collapse all item'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 990),
              child: Column(
                children: [
                  Text(
                    'Collapse all items in group when one expanding is tapped',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  _buildContent(context),
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
          toggleType: ToggleType.collapseAll,
          spaceBetweenItem: 8,
          onExpansionItemChanged: (index, isExpanded) {},
          children: [
            ExpansionTileItem.outlined(
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
            ExpansionTileOutlined(
              initiallyExpanded: true,
              title: const Text('ExpansionTile 1'),
              expendedBorderColor: Colors.red,
              children: const [
                Text(
                    '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
            ExpansionTileLeaf(
              initiallyExpanded: false,
              title: const Text('ExpansionTile 2'),
              expendedBorderColor: Colors.blue,
              children: const [
                Text(
                    '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
            ExpansionTileItem.leaf(
              initiallyExpanded: false,
              title: const Text('ExpansionTile 3'),
              expendedBorderColor: Colors.green,
              isReverseLeaf: true,
              children: const [
                Text(
                    '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
            const ExpansionTileFlat(
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
        ),
      ),
    );
  }
}
