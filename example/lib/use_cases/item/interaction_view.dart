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
    const Text(
      'Hello',
      style: TextStyle(color: Colors.red),
    ),
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
        const Text('Check all result below',
            style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w600)),
        ExpansionTileItem.outlined(
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
      const Divider(),
      _buildRow(context,
          title: 'Lock expanded state so that you can NOT expand anymore',
          button: ElevatedButton.icon(
            icon: Icon(isEnableExpanded ? Icons.lock_outline : Icons.lock_open),
            label: Text(isEnableExpanded ? 'Do Lock' : 'Do Unlock'),
            onPressed: () {
              setState(() {
                isEnableExpanded = !isEnableExpanded;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title: 'Hide the subtitle whenever you expand the view',
          button: ElevatedButton.icon(
            icon: Icon(isHideSubtitle
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined),
            label: Text(isHideSubtitle ? 'Do Show' : 'Do Hide'),
            onPressed: () {
              setState(() {
                isHideSubtitle = !isHideSubtitle;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title: 'Remove completely trailing not like ExpansionTile',
          button: ElevatedButton.icon(
            icon: Icon(isHasTrailing ? Icons.remove : Icons.add),
            label: Text(isHasTrailing ? 'Remove trailing' : 'Add trailing'),
            onPressed: () {
              setState(() {
                isHasTrailing = !isHasTrailing;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title: 'Remove completely default vertical padding of ExpansionTile',
          button: ElevatedButton.icon(
            icon: Icon(isDefaultVerticalPadding ? Icons.remove : Icons.add),
            label: Text(isDefaultVerticalPadding
                ? 'Remove Default Padding'
                : 'Add Default Padding'),
            onPressed: () {
              setState(() {
                isDefaultVerticalPadding = !isDefaultVerticalPadding;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title: 'Change Trailing Icon with keeping rotate animation',
          button: ElevatedButton.icon(
            icon: listIcon[currentIcon % listIcon.length],
            iconAlignment: IconAlignment.end,
            label: const Text('Change icon'),
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
