<<<<<<< HEAD
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:focusflot/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
=======
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app_project/main.dart';
import 'package:flutter_app_project/screens/home/home_screen.dart';
import 'package:flutter_app_project/screens/settings/settings_screen.dart';

void main() {
  testWidgets('App shows splash screen then home screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('FocusFlow'), findsOneWidget);
    expect(find.text('Smart Life Scheduler'), findsOneWidget);

    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    expect(find.text('Good Evening,'), findsOneWidget);
  });

  testWidgets('Tapping Add on home opens the schedule sheet', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: HomeScreen()),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('Add'));
    await tester.pumpAndSettle();

    expect(find.text('Add Schedule'), findsOneWidget);
  });

  testWidgets('Tapping Notifications opens the notifications screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: SettingsScreen()),
    );

    await tester.tap(find.widgetWithText(ListTile, 'Notifications'));
    await tester.pumpAndSettle();

    expect(find.text('CHANNELS'), findsOneWidget);
>>>>>>> 9faad0bc1ff437255443789d69aebc11f04ee28e
  });
}
