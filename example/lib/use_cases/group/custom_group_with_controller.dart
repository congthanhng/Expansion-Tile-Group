import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class CustomGroupWithController extends StatefulWidget {
  const CustomGroupWithController({Key? key}) : super(key: key);

  @override
  State<CustomGroupWithController> createState() =>
      _CustomGroupWithControllerState();
}

class _CustomGroupWithControllerState extends State<CustomGroupWithController> {
  late final ExpansionGroupController controller;

  @override
  void initState() {
    controller = ExpansionGroupController(
        length: 6, initialIndex: 0, toggleType: ToggleType.expandAllOrCollapseAll);

    controller.addItemChangedListener(
      (index, isExpanded) {
        debugPrint('index: $index, isExpanded: $isExpanded');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('By Using Controller, you can customize your items and behaviors anywhere'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: _buildContent(context),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              'ListView with 5 items Below',
              style: TextStyle(fontSize: 16, color: Colors.red[700]),
            ),
            const SizedBox(
              height: 4,
            ),
            ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      height: 8,
                    ),
                shrinkWrap: true,
                itemBuilder: (context, index) => ExpansionTileOutlined(
                    controller: controller,
                    index: index,
                    title: Text('HELLO, I\'m index: $index of ListView'),
                    children: [sampleContent]),
                itemCount: 5),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Wrap by Container',
              style: TextStyle(fontSize: 16, color: Colors.red[700]),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              color: Colors.yellow,
              width: 250,
              child: ExpansionTileFlat(
                  controller: controller,
                  index: 5,
                  title:
                      const Text('HELLO, I\'m index: 5 and wrap by Container'),
                  children: [sampleContent]),
            )
          ],
        ),
      ),
    );
  }

  Widget get sampleContent => Material(
        child: InkWell(
          onTap: () {},
          child: const Text(
              ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
        ),
      );
}
