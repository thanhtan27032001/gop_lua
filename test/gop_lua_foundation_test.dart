import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/gop_lua/widgets.dart';

void main() {
  test('formatVnd formats Vietnamese currency', () {
    expect(formatVnd(1000000), '1.000.000 ₫');
    expect(formatVnd(35000, sign: '−'), '−35.000 ₫');
  });
  testWidgets('daily limit thresholds', (tester) async {
    await tester
        .pumpWidget(MaterialApp(home: GlDailyLimitCard(limit: 100, spent: 80)));
    expect(find.text('Sắp chạm hạn mức'), findsOneWidget);
    await tester.pumpWidget(
        MaterialApp(home: GlDailyLimitCard(limit: 100, spent: 100)));
    expect(find.text('Vượt hạn mức'), findsOneWidget);
  });
  testWidgets('goal statuses', (tester) async {
    await tester.pumpWidget(const MaterialApp(
        home: GlGoalCard(
            name: 'Xe', target: 100, saved: 100, status: GlGoalStatus.done)));
    expect(find.text('Đã gặt đủ'), findsOneWidget);
  });
}
