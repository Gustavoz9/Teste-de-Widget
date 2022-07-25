import 'package:design/component/Button.dart';
import 'package:design/component/HelperText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'main_app.dart';

clicked() {}
void main() {
  testWidgets('must call back a functional widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: TestAppWidget(
            body: ButtonForTest(
          click: clicked,
          cor: Color.fromARGB(255, 242, 99, 99),
          disableColor: Colors.red,
          label: 'label',
          value: true,
        )),
      ),
    );

    expect(find.text('label'), findsOneWidget);
    expect(find.byKey(Key('findElevatedButton')), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
  });
}
