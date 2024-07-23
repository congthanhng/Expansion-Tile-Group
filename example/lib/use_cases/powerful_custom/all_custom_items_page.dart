import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

import 'interaction_view.dart';

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildInteractSection(context),
            _buildSection(
              context,
              title: 'All already supported types:',
              body: _buildPrimaryItem(context),
            ),
            _buildSection(
              context,
              title: 'More other custom',
              body: _buildCustomItem(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrimaryItem(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8,),

        ExpansionTileItem(
          title: const Text('ExpansionTileItem'),
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
        const SizedBox(height: 8,),

        ExpansionTileItem.withBorder(
          title: const Text('ExpansionTileItem.withBorder'),
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
        const SizedBox(height: 8,),
        ExpansionTileBorderItem(
          initiallyExpanded: true,
          title: const Text('ExpansionTileBorderItem'),
          expendedBorderColor: Colors.red,
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 8,),

        ExpansionTileLeafItem(
          initiallyExpanded: false,
          title: const Text('ExpansionTileLeafItem'),
          expendedBorderColor: Colors.blue,
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 8,),

        ExpansionTileItem.leaf(
          initiallyExpanded: false,
          title: const Text('ExpansionTileItem.leaf with isReverseLeaf == true'),
          expendedBorderColor: Colors.green,
          isReverseLeaf: true,
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 8,),

        const ExpansionTileWithoutBorderItem(
          initiallyExpanded: false,
          title: Text('ExpansionTileWithoutBorderItem'),
          expendedBorderColor: Colors.green,
          children: [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 8,),

        const ExpansionTileItem.withoutBorder(
          initiallyExpanded: false,
          title: Text('ExpansionTileItem.withoutBorder'),
          expendedBorderColor: Colors.green,
          children: [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
      ],
    );
  }

  Widget _buildCustomItem(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTileItem.withBorder(
          expendedBorderColor: Colors.grey,
          title: const Text('This title is very very long long long long long long long long long '),
          subtitle: const Text('This subtitle is also very very long long long long long long long long long with red color', style: TextStyle(color: Colors.red),),
          children: const [
            Text(
                '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 8,),

        ExpansionTileItem(
          title: const Text(
              'Item without TrailingIcon, but has Expanded border and Title border radius'),
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
        const SizedBox(height: 8,),

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
        const SizedBox(height: 8,),

        ExpansionTileItem(
          initiallyExpanded: false,
          title: const Text(
              'Item has shadow, border, background color, text color in different expand and collapse'),
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
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 8,),

        ExpansionTileItem(
          initiallyExpanded: false,
          title: const Text('Item with custom border side radius'),
          backgroundColor: Colors.red,
          collapsedBackgroundColor: Colors.yellow,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
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
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 8,),

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
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          children: const [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 8,),

        const ExpansionTileItem(
          initiallyExpanded: false,
          title: Text('ExpansionTile 9'),
          isHasTopBorder: false,
          isHasBottomBorder: false,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
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
        const SizedBox(height: 8,),

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
          trailingIcon: Icon(Icons.access_time),
          children: [
            Text(
                '''Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
        const SizedBox(height: 32,),

      ],
    );
  }

  Widget _buildInteractSection(BuildContext context){
    return _buildSection(
      context,
      title: 'Try yourself with features',
      body: const InteractionView(),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title, String? description, required Widget body}) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.green)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          if (description != null)
            Text(description,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          body
        ],
      ),
    );
  }
}
