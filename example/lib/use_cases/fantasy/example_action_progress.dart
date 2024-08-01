import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleActionProgress extends StatefulWidget {
  const ExampleActionProgress({super.key});

  @override
  State<ExampleActionProgress> createState() => _ExampleActionProgressState();
}

class _ExampleActionProgressState extends State<ExampleActionProgress> {
  bool isProgressing = false;
  final GlobalKey<ExpansionTileCoreState> key0 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        setState(() {
          isProgressing = true;
        });
        await Future.delayed(const Duration(seconds: 3));
        setState(() {
          isProgressing = false;
        });
        key0.currentState?.expand();
        await Future.delayed(const Duration(seconds: 3));
        key0.currentState?.collapse();
      },
      child: IgnorePointer(
        child: ExpansionTileCard(
          expansionKey: key0,
          elevation: 3,
          textColor: Colors.green,
          leading: Image.asset('assets/image/secret_folder.png',
              width: 60, height: 60),
          title: const Text(
            'Upload this secret folder',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          trailing: _buildTrailing(context),
          childrenPadding: EdgeInsets.zero,
          tilePadding: const EdgeInsets.all(16),
          initiallyExpanded: false,
          children: [_buildChildren(context)],
        ),
      ),
    );
  }

  Widget _buildChildren(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.green,
      child: const Center(
        child: Text(
          'You have successful uploaded this folder!',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildTrailing(BuildContext context) {
    if (!isProgressing) {
      return Image.asset('assets/image/upload.png', width: 60, height: 60);
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/image/upload.png', width: 30, height: 30),
        SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              color: Colors.blue[800]!,
              backgroundColor: Colors.lightBlue[300],
            ))
      ],
    );
  }
}
