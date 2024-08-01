import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleHideActionCard extends StatefulWidget {
  const ExampleHideActionCard({super.key});

  @override
  State<ExampleHideActionCard> createState() => _ExampleHideActionCardState();
}

class _ExampleHideActionCardState extends State<ExampleHideActionCard> {
  final GlobalKey<ExpansionTileCoreState> key0 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        if (value) {
          key0.currentState?.expand();
        } else {
          key0.currentState?.collapse();
        }
      },
      onTap: () {},
      child: IgnorePointer(
        child: ExpansionTileCard(
          expansionKey: key0,
          elevation: 2,
          textColor: Colors.green,
          isHasTrailing: false,
          title: _buildTitle(context),
          childrenPadding: EdgeInsets.zero,
          initiallyExpanded: false,
          children: [_buildChildren(context)],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.lightGreen,
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Abrodolph Lincoler',
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Business Account'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontSize: 18),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(Icons.arrow_upward_outlined, color: Colors.green),
              const SizedBox(
                width: 8,
              ),
              Text(
                '12.3%'.toUpperCase(),
                style: const TextStyle(color: Colors.green),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '\$33,814',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 42),
              ),
              Text(
                '.69',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChildren(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
    return Container(
      color: Colors.black87,
      child: Column(
        children: [
          const Divider(
            thickness: 1.0,
            height: 1.0,
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
                    Icon(Icons.star, color: Colors.white),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
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
                    Icon(Icons.open_in_browser_outlined, color: Colors.white),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Open',
                      style: TextStyle(color: Colors.white),
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
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Text(
                      'Share',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
