
# Upgrade an app that using ExpansionTile
To upgrade an app that is already using the ExpansionTile widget, change the name `ExpansionTile` to `ExpansionTileItem` without changing any properties.

For example:

When using `ExpansionTile` widget
```dart
class ExampleWidget extends StatelessWidget {
  const CollapseAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Widget'),
      ),
      body: const ExpansionTile(
        title: Text('ExpansionTile 1'),
        subtitle: Text('Trailing expansion arrow icon'),
        children: <Widget>[
          ListTile(title: Text('This is tile number 1')),
        ],
      ),
    );
  }
}
```

After upgrading to `ExpansionTileItem` widget
```dart
class ExampleWidget extends StatelessWidget {
  const CollapseAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Widget'),
      ),
      body: const ExpansionTileItem(
        title: Text('ExpansionTile 1'),
        subtitle: Text('Trailing expansion arrow icon'),
        children: <Widget>[
          ListTile(title: Text('This is tile number 1')),
        ],
      ),
    );
  }
}
```

