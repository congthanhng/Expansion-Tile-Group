import 'package:flutter/material.dart';

import 'example_action_card.dart';
import 'example_action_drop.dart';
import 'example_action_progress.dart';
import 'example_action_stetch.dart';

class FantasyPage extends StatelessWidget {
  const FantasyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fantasy Items'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                const ExampleActionCard(),
                const SizedBox(
                  height: 24,
                ),
                ExampleActionDrop(),
                const SizedBox(
                  height: 24,
                ),
                ExampleActionStretch(),
                const SizedBox(
                  height: 24,
                ),
                const ExampleActionProgress(),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
