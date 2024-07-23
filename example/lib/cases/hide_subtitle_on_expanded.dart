import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class HideSubtitleOnExpandedPage extends StatelessWidget {
  const HideSubtitleOnExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hide Subtitle on Expanded'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
                'The Expansion Items can\'t expand until loading is success'),
            const SizedBox(height: 20),
            const ExpansionTileItem(
              title: Text('ExpansionTile 2'),
              isHideSubtitleOnExpanded: true,
              subtitle: Text(
                'Subtitle',
                style: TextStyle(color: Colors.red),
              ),
              children: [
                Text(
                    '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
            ExpansionTileBorderItem(
              title: const Text('ExpansionTile 1'),
              isHideSubtitleOnExpanded: true,
              subtitle: const Text(
                'Subtitle',
                style: TextStyle(color: Colors.red),
              ),
              children: const [
                Text(
                    '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
            const ExpansionTileWithoutBorderItem(
              title: Text('ExpansionTile 3'),
              isHideSubtitleOnExpanded: true,
              subtitle: Text(
                'Subtitle',
                style: TextStyle(color: Colors.red),
              ),
              children: [
                Text(
                    '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
