import 'package:flutter/material.dart';
import '../widgets/gop_lua/widgets.dart';

class GopLuaPreview extends StatelessWidget {
  const GopLuaPreview({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
          body: ListView(padding: const EdgeInsets.all(16), children: [
        GlDailyLimitCard(limit: 200000, spent: 150000),
        const SizedBox(height: 16),
        const GlGoalCard(name: 'Mua dàn PC', target: 18000000, saved: 7800000),
        const SizedBox(height: 16),
        GlButton('Lưu', onPressed: null, block: true),
        const SizedBox(height: 16),
        const GlAmountField(value: 35000),
        const GlChip('Ăn uống', selected: true),
      ]));
}
