import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/login_page.dart';

void main() {
  testWidgets('Judul halaman harus Login Page', (WidgetTester tester) async {
    //testing judul
    await tester.pumpWidget(
      MaterialApp(
        home: LoginPage(),
      ),
    );

    expect(find.text('Login Page'), findsOneWidget);
  });
}
