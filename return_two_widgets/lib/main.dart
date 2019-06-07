import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      title: 'Flutter SDK 2.2.2 or later',
      home: Scaffold(
        appBar: AppBar(title: Text("Spread Operator")),
        body: Column(children: _returnMultipleWidgets()),
      ),
    ),
  );
}

List<Widget> _returnMultipleWidgets() {
  // Update your pubspec.yaml file
  //environment:
  //sdk: '>=2.2.2 <3.0.0'

  // Create a List of Widgets
  return <Widget>[
    // Loop through your items
    // use the spread operator (...) to flatten the widgets into a list. Otherwise it would be a List of Lists (List<List<Widget>>).
    for (final i in [1, 2, 3, 4]) ...[
      // build out your widgets
      Text(
        'Text Widget: $i-a',
      ),
      Text(
        'Text Widget: $i-b',
      ),
      SizedBox(height: 20),
    ],
  ];
}
