


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project2/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(
      items: List<String>.generate(100, (i) => 'Item $i'),
    ));

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey('item_50_text'));

    // Scroll until the item to be found appears.
    await tester.scrollUntilVisible(
      itemFinder,
      50.0,
      scrollable: listFinder,
    );

    // Verify that the item contains the correct text.
    expect(itemFinder, findsAtLeastNWidgets(1));
  });
}