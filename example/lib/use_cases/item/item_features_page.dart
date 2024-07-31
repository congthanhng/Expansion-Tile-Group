import 'package:flutter/material.dart';

import 'interaction_view.dart';
import 'more_custom_view.dart';
import 'supported_types_view.dart';

class ItemFeaturesPage extends StatelessWidget {
  const ItemFeaturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Item Page'),
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
                  title: 'More other custom',
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
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.green)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
          if (description != null)
            Text(description,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          body
        ],
      ),
    );
  }
}
