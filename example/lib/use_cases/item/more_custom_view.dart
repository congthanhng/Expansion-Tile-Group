import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

import 'expansion_card.dart';

class MoreCustomView extends StatelessWidget {
  const MoreCustomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const ExpansionCard(),
        const SizedBox(
          height: 16,
        ),
        ExpansionTileItem(
            title: const Text('Item without expanded Top border'),
            isHasBottomBorder: true,
            isHasRightBorder: true,
            isHasTopBorder: false,
            isHasLeftBorder: true,
            initiallyExpanded: false,
            expendedBorderColor: Colors.red,
            children: _buildDefaultChildren(context)),
        const SizedBox(
          height: 16,
        ),
        ExpansionTileItem.outlined(
            initiallyExpanded: false,
            expendedBorderColor: Colors.grey,
            title: const Text(
                'This title is very very long long long long long long long long long long long long long long long long long'),
            subtitle: const Text(
              'This subtitle is also very very long long long long long long long long long long long long long long long long long with red color',
              style: TextStyle(color: Colors.red),
            ),
            children: _buildDefaultChildren(context)),
        const SizedBox(
          height: 16,
        ),
        ExpansionTileItem(
            initiallyExpanded: false,
            title: const Text(
                'Item without TrailingIcon, but has Expanded border and Title border radius'),
            expendedBorderColor: Colors.blue,
            isHasTrailing: false,
            borderRadius: BorderRadius.circular(12),
            isHasBottomBorder: true,
            isHasTopBorder: true,
            isHasRightBorder: true,
            isHasLeftBorder: true,
            children: _buildDefaultChildren(context)),
        const SizedBox(
          height: 16,
        ),
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
            children: _buildDefaultChildren(context)),
        const SizedBox(
          height: 16,
        ),
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
            children: _buildDefaultChildren(context)),
        const SizedBox(
          height: 16,
        ),
        ExpansionTileItem(
            initiallyExpanded: false,
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
            children: _buildDefaultChildren(context)),
        const SizedBox(
          height: 16,
        ),
        ExpansionTileItem(
            initiallyExpanded: false,
            title: const Text('ExpansionTile 9'),
            isHasTopBorder: false,
            isHasBottomBorder: false,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            backgroundColor: Colors.blueAccent,
            collapsedBackgroundColor: Colors.blueAccent,
            collapsedIconColor: Colors.green,
            iconColor: Colors.red,
            textColor: Colors.white,
            collapsedTextColor: Colors.red,
            children: _buildDefaultChildren(context)),
        const SizedBox(
          height: 16,
        ),
        ExpansionTileItem(
            initiallyExpanded: false,
            title: const Text('Item without default vertical padding'),
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
            trailingIcon: const Icon(Icons.access_time),
            children: _buildDefaultChildren(context)),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          height: 32,
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
