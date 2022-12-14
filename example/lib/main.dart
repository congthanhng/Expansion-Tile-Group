import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<ExpansionTileCustomState> key1 = GlobalKey();

  int currentItem = 0;
  bool isCurrentExpanded = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expansion Tile Group Demo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'current INDEX: $currentItem \nisExpanded: $isCurrentExpanded',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTileGroup(
                  toggleType: ToggleType.expandOnlyCurrent,
                  spaceBetweenItem: 8,
                  onExpansionItemChanged: (index, isExpanded) {
                    setState(() {
                      currentItem = index;
                      isCurrentExpanded = isExpanded;
                    });
                  },
                  children: [
                    ExpansionTileBorderItem(
                      initiallyExpanded: true,
                      title: Text('ExpansionTile 0'),
                      expansionKey: key1,
                      expendedBorderColor: Colors.red,
                      children: [
                        Text('adfaffadfafaf', textAlign: TextAlign.start),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf')
                      ],
                    ),
                    ExpansionTileItem(
                      title: Text('ExpansionTile 1'),
                      expendedBorderColor: Colors.red,
                      children: [
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf')
                      ],
                    ),
                    ExpansionTileWithoutBorderItem(
                      title: Text('ExpansionTile 1'),
                      children: [
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf'),
                        Text('adfaffadfafaf')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
