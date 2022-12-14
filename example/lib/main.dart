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
                      children: [
                        Text(
                            ''' Donec pharetra, turpis non vehicula dignissim, diam arcu sodales augue, nec euismod augue orci at diam. Vivamus fringilla molestie augue, sed malesuada velit cursus in. Cras egestas tortor commodo arcu interdum, sit amet dignissim magna faucibus. Praesent in erat erat. Integer ac nunc ut dui viverra aliquam. Suspendisse neque velit, ultricies at lacinia vel, venenatis nec tellus. Pellentesque mauris risus, dignissim dignissim turpis pretium, accumsan cursus leo. Donec semper ligula velit, id malesuada odio consectetur eget. Nulla suscipit id erat id cursus. Ut posuere urna a leo maximus viverra. Duis eget leo ullamcorper, venenatis mauris ut, scelerisque enim. Quisque posuere cursus ultricies. Aenean pharetra sodales massa non mattis.

Aenean condimentum faucibus blandit. Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                      ],
                    ),
                    ExpansionTileBorderItem(
                      initiallyExpanded: true,
                      title: Text('ExpansionTile 0'),
                      expendedBorderColor: Colors.red,
                      children: [
                        Text(
                            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse at nibh quis arcu vestibulum gravida nec et elit. Etiam luctus tortor lectus, ut varius nibh porttitor eget. Vivamus volutpat ac est commodo consequat. Cras dignissim commodo erat ut tristique. Curabitur urna sapien, posuere vel dolor non, hendrerit tempus quam. Nullam molestie vehicula augue, dapibus viverra orci blandit eget. Quisque scelerisque nulla mattis mattis tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer quis sapien lorem.

Morbi molestie venenatis nisl sed consequat Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                      ],
                    ),
                    ExpansionTileItem(
                      title: Text('ExpansionTile 1'),
                      expendedBorderColor: Colors.red,
                      expandedAlignment: Alignment.topLeft,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text('ListTile'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('ListTile'),
                          trailing: Icon(Icons.add_chart_outlined),
                        ),
                        ListTile(
                          title: Text('ListTile'),
                          trailing: Icon(Icons.calendar_month),
                        ),
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
              MaterialButton(
                onPressed: (){
                  key1.currentState?.expand();
                },
                child: Text('Expand item 1'),
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
