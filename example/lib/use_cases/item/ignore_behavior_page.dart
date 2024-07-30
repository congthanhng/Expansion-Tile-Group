import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class IgnoreBehaviorPage extends StatelessWidget {
  const IgnoreBehaviorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test force behavior'),
      ),
      body: FutureBuilder(
          future: Future.delayed(const Duration(seconds: 5)),
          builder: (context, snapshot) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                      'The Expansion Items can\'t expand until loading is success'),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpansionTileBorderItem(
                      title: const Text('ExpansionTile 1'),
                      isEnableExpanded:
                          snapshot.connectionState == ConnectionState.done,
                      children: const [
                        Text(
                            '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                      ],
                    ),
                  ),
                  ExpansionTileItem(
                    title: const Text('ExpansionTile 2'),
                    isEnableExpanded:
                        snapshot.connectionState == ConnectionState.done,
                    children: const [
                      Text(
                          '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  ExpansionTileWithoutBorderItem(
                    title: const Text('ExpansionTile 3'),
                    isEnableExpanded:
                        snapshot.connectionState == ConnectionState.done,
                    children: const [
                      Text(
                          '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                    ],
                  ),
                  snapshot.connectionState != ConnectionState.done
                      ? const Center(
                          child: CircularProgressIndicator(
                          color: Colors.red,
                        ))
                      : Container()
                ],
              ),
            );
          }),
    );
  }
}
