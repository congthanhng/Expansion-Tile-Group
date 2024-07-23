import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class InteractionView extends StatefulWidget {
  const InteractionView({super.key});

  @override
  State<InteractionView> createState() => _InteractionViewState();
}

class _InteractionViewState extends State<InteractionView> {
  bool isEnableExpanded = true;
  bool isHideSubtitle = false;
  bool isHasTrailing = true;
  bool isDefaultVerticalPadding = true;

  final listIcon = <Widget>[
    const Icon(Icons.keyboard_arrow_down_outlined),
    const Text('Hello',style: TextStyle(color: Colors.red),),
    const Icon(Icons.access_time),
    const Icon(Icons.accessibility_sharp),
    const Icon(Icons.account_circle_outlined),
    const Icon(Icons.add_call),
    const Icon(Icons.abc),
    const Icon(Icons.access_time_outlined),
    const Text('Hello')
  ];

  int currentIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildActions(context),
        const SizedBox(
          height: 16,
        ),
        const Text('Check result below',
            style: TextStyle(fontSize: 16, color: Colors.black)),
        ExpansionTileItem.withBorder(
          expandedAlignment: Alignment.topLeft,
          isEnableExpanded: isEnableExpanded,
          isHideSubtitleOnExpanded: isHideSubtitle,
          isHasTrailing: isHasTrailing,
          isDefaultVerticalPadding: isDefaultVerticalPadding,
          trailingIcon: listIcon[currentIcon % listIcon.length],
          expendedBorderColor: Colors.grey,
          title: const Text('ExpansionTileItem.withBorder'),
          subtitle: const Text(
            'Subtitle',
            style: TextStyle(color: Colors.red),
          ),
          children: const [
            Text(
                '''Null am eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
          ],
        ),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Column(children: [
      _buildRow(context,
          title: 'Lock expanded state',
          button: ElevatedButton.icon(
            icon: Icon(isEnableExpanded ? Icons.lock_outline : Icons.lock_open),
            label: Text(isEnableExpanded ? 'Lock' : 'Unlock'),
            onPressed: () {
              setState(() {
                isEnableExpanded = !isEnableExpanded;
              });
            },
          )),

      _buildRow(context,
          title: 'Hide subtitle on expanded view',
          button: ElevatedButton.icon(
            icon: Icon(isHideSubtitle ? Icons.visibility_outlined : Icons.visibility_off_outlined),
            label: Text(isHideSubtitle ? 'Show' : 'Hide'),
            onPressed: () {
              setState(() {
                isHideSubtitle = !isHideSubtitle;
              });
            },
          )),

      _buildRow(context,
          title: 'Remove completely trailing',
          button: ElevatedButton.icon(
            icon: Icon(isHasTrailing ? Icons.remove : Icons.add),
            label: Text(isHasTrailing ? 'Remove trailing' : 'Has trailing'),
            onPressed: () {
              setState(() {
                isHasTrailing = !isHasTrailing;
              });
            },
          )),
      _buildRow(context,
          title: 'Remove completely default vertical padding of ExpansionTile',
          button: ElevatedButton.icon(
            icon: Icon(isDefaultVerticalPadding ? Icons.remove : Icons.add),
            label: Text(isDefaultVerticalPadding ? 'Remove Default' : 'Add'),
            onPressed: () {
              setState(() {
                isDefaultVerticalPadding = !isDefaultVerticalPadding;
              });
            },
          )),

      _buildRow(context,
          title: 'Change Trailing Icon and keep rotate animation',
          button: ElevatedButton.icon(
            icon: listIcon[currentIcon % listIcon.length],
            label: const Text('Change'),
            onPressed: () {
              setState(() {
                currentIcon = currentIcon + 1;
              });
            },
          )),
    ]);
  }

  Widget _buildRow(BuildContext context,
      {String? title, required Widget button}) {
    return Row(
      children: [
        Expanded(
          child: Text(title ?? '',
              style: const TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black)),
        ),
        button,
      ],
    );
  }
}
