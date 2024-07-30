import 'package:flutter/material.dart';

import 'interaction_view.dart';
import 'more_example_view.dart';
import 'supported_types_view.dart';

class ItemFeaturesPage extends StatelessWidget {
  const ItemFeaturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Features Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildSection(
                  context,
                  title: 'Try yourself with below features',
                  body: const InteractionView(),
                ),
                _buildSection(
                  context,
                  title: 'Supported types:',
                  body: const SupportedTypesView(),
                ),
                _buildSection(
                  context,
                  title: 'More Examples',
                  body: const MoreCustomView(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title, String? description, required Widget body}) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.red[700])),
            if (description != null)
              Text(description,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            body
          ],
        ),
      ),
    );
  }
}
