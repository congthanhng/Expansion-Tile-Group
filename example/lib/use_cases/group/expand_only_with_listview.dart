import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpandOnlyWithListView extends StatefulWidget {
  const ExpandOnlyWithListView({Key? key}) : super(key: key);

  @override
  State<ExpandOnlyWithListView> createState() => _ExpandOnlyWithListViewState();
}

class _ExpandOnlyWithListViewState extends State<ExpandOnlyWithListView> {
  late final ExpansionGroupController controller;

  @override
  void initState() {
    controller = ExpansionGroupController(
        length: 101, initialIndex: 0, toggleType: ToggleType.collapseAll);

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
        title: const Text('Expand only with listview'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  _buildContent(context),
                ],
              ),
            ),
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
            ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      height: 8,
                    ),
                shrinkWrap: true,
                itemBuilder: (context, index) => ExpansionTileOutlined(
                        controller: controller,
                        index: index,
                        title: Text('HELLLO $index'),
                        children: [
                          Material(
                            child: InkWell(
                              onTap: () {},
                              child: const Text(
                                  ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                            ),
                          ),
                        ]),
                itemCount: 100),
            Container(
              color: Colors.red,
              width: 250,
              child: ExpansionTileFlat(
                  controller: controller,
                  index: 100,
                  title: const Text('HELLLO 101'),
                  children: [
                    Material(
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                            ''' Nullam eleifend ultrices tortor, sit amet gravida sapien cursus vitae. Duis rutrum convallis erat et ultrices. Morbi a luctus ligula, at varius ligula. Nam mollis sapien ac nunc hendrerit consequat. Cras posuere metus felis, at pellentesque sem ornare id. Praesent ut nunc aliquam, dictum felis eu, congue metus. Nunc vitae elit eros. In eu dui pharetra, varius metus a, efficitur eros.'''),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
