import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleActionCard extends StatelessWidget {
  const ExampleActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      elevation: 2,
      textColor: Colors.green,
      leading: const CircleAvatar(
        backgroundColor: Colors.lightGreen,
        child: Text(
          'B',
          style: TextStyle(color: Colors.white),
        ),
      ),
      title: const Text('Tap me!'),
      subtitle: const Text('I expand, too!'),
      childrenPadding: EdgeInsets.zero,
      initiallyExpanded: false,
      children: _buildChildren(context),
    );
  }

  List<Widget> _buildChildren(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
    return <Widget>[
      const Divider(
        thickness: 1.0,
        height: 1.0,
      ),
      Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

Use me any time you think your app could benefit from being just a bit more Material.

These buttons control the card above!""",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
        ),
      ),
      ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        buttonHeight: 52.0,
        buttonMinWidth: 90.0,
        children: <Widget>[
          TextButton(
            style: flatButtonStyle,
            onPressed: () {
              // cardA.currentState?.expand();
            },
            child: const Column(
              children: <Widget>[
                Icon(Icons.star, color: Colors.green),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                ),
                Text(
                  'Save',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          TextButton(
            style: flatButtonStyle,
            onPressed: () {
              // cardA.currentState?.collapse();
            },
            child: const Column(
              children: <Widget>[
                Icon(Icons.open_in_browser_outlined, color: Colors.green),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                ),
                Text(
                  'Open',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          TextButton(
            style: flatButtonStyle,
            onPressed: () {
              // cardA.currentState?.toggleExpansion();
            },
            child: const Column(
              children: <Widget>[
                Icon(
                  Icons.share,
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                ),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    ];
  }
}
