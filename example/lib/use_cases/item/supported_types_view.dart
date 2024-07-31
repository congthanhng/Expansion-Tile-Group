import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class SupportedTypesView extends StatelessWidget {
  const SupportedTypesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        ExpansionTileItem(
          title: const Text('ExpansionTileItem'),
          children: _buildDefaultChildren(context),
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTileItem.outlined(
          title: const Text('ExpansionTileItem.outlined'),
          children: _buildDefaultChildren(context),
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTileBorderItem(
          initiallyExpanded: true,
          title: const Text('ExpansionTileOutlined'),
          expendedBorderColor: Colors.red,
          children: _buildDefaultChildren(context),
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTileLeafItem(
          initiallyExpanded: false,
          title: const Text('ExpansionTileLeaf'),
          expendedBorderColor: Colors.blue,
          children: _buildDefaultChildren(context),
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTileItem.leaf(
          initiallyExpanded: false,
          title:
              const Text('ExpansionTileItem.leaf with isReverseLeaf == true'),
          expendedBorderColor: Colors.green,
          isReverseLeaf: true,
          children: _buildDefaultChildren(context),
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTileWithoutBorderItem(
          initiallyExpanded: false,
          title: const Text('ExpansionTileFlat'),
          expendedBorderColor: Colors.green,
          children: _buildDefaultChildren(context),
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTileItem.flat(
          initiallyExpanded: false,
          title: const Text('ExpansionTileItem.flat'),
          expendedBorderColor: Colors.green,
          children: _buildDefaultChildren(context),
        ),
      ],
    );
  }

  List<Widget> _buildDefaultChildren(BuildContext context) {
    return [
      Material(
        child: InkWell(
          onTap: () {},
          child: const Text(
              ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
        ),
      )
    ];
  }
}