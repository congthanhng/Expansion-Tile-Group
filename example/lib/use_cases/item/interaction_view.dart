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
  bool isOnlyTrailingDoToggle = false;
  final GlobalKey<ExpansionTileCoreState> key0 = GlobalKey();

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
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.w600)),
        ExpansionTileItem.outlined(
          expansionKey: key0,
          isEnableExpanded: isEnableExpanded,
          isHideSubtitleOnExpanded: isHideSubtitle,
          isHasTrailing: isHasTrailing,
          isDefaultVerticalPadding: isDefaultVerticalPadding,
          trailingIcon: listIcon[currentIcon % listIcon.length],
          expendedBorderColor: Colors.grey,
          isOnlyTrailingDoToggle: isOnlyTrailingDoToggle,
          title: const Text('ExpansionTileItem Results'),
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
          title: 'Do I need to enable expanded state?',
          button: Checkbox(
            value: isEnableExpanded,
            onChanged: (value) {
              setState(() {
                isEnableExpanded = value ?? false;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title: 'Do I need to hide the subtitle whenever I expanded the view?',
          button: Checkbox(
            value: isHideSubtitle,
            onChanged: (value) {
              setState(() {
                isHideSubtitle = value ?? false;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title:
              'Do I need to use ExpansionTile default trailing or remove completely it?',
          button: Checkbox(
            value: isHasTrailing,
            onChanged: (value) {
              setState(() {
                isHasTrailing = value ?? false;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title:
              'Do I need to use ExpansionTile default vertical padding or remove it?',
          button: Checkbox(
            value: isDefaultVerticalPadding,
            onChanged: (value) {
              setState(() {
                isDefaultVerticalPadding = value ?? false;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title: 'Do I need to use just the trailing to toggle the state?',
          button: Checkbox(
            value: isOnlyTrailingDoToggle,
            onChanged: (value) {
              setState(() {
                isOnlyTrailingDoToggle = value ?? false;
              });
            },
          )),
      const Divider(),
      _buildRow(context,
          title:
              'Do I need to change trailing icon with keeping rotate animation?',
          button: ElevatedButton.icon(
            icon: listIcon[currentIcon % listIcon.length],
            iconAlignment: IconAlignment.end,
            label: const Text('Tap to change'),
            onPressed: () {
              setState(() {
                currentIcon = currentIcon + 1;
              });
            },
          )),
      const Divider(),
      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          MaterialButton(
            onPressed: () {
              key0.currentState?.toggle();
            },
            color: Colors.lightBlue,
            child: const Text('Toggle item'),
          ),
          MaterialButton(
            onPressed: () {
              key0.currentState?.collapse();
            },
            color: Colors.lightBlue,
            child: const Text('collapse item'),
          ),
          MaterialButton(
            onPressed: () {
              key0.currentState?.expand();
            },
            color: Colors.lightBlue,
            child: const Text('expand item'),
          ),
        ],
      ),
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
