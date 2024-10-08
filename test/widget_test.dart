import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_project_name/main.dart'; // تأكد من تغيير اسم المشروع إلى اسم مشروعك الفعلي

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // بناء التطبيق الخاص بنا وتحفيز الإطار.
    await tester.pumpWidget(MyApp());

    // التحقق من أن العداد يبدأ من 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // الضغط على أيقونة '+' وتحفيز الإطار.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // التحقق من أن العداد قد زاد.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
