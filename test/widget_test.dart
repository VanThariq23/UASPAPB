import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pecel_app/main.dart';

void main() {
  testWidgets('Pecel App Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(PecelApp());

    // Verify that our AppBar title is present.
    expect(find.text('Pecel App'), findsOneWidget);

    // Verify that the header image is present.
    expect(find.byType(Image), findsOneWidget);

    // Verify that the horizontal ListView is present.
    expect(find.byType(ListView), findsOneWidget);
  });
}
