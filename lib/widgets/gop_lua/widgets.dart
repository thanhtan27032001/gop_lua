import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../src/theme/gop_lua_theme.dart';

String formatVnd(int value, {String? sign}) {
  final s = value.abs().toString();
  final b = StringBuffer();
  for (var i = 0; i < s.length; i++) {
    if (i > 0 && (s.length - i) % 3 == 0) b.write('.');
    b.write(s[i]);
  }
  return '${sign ?? (value < 0 ? '−' : '')}${b.toString()} ₫';
}

class GlIcon extends StatelessWidget {
  const GlIcon(this.name, {super.key, this.size = 24, this.color});
  final String name;
  final double size;
  final Color? color;
  Widget build(BuildContext c) => SvgPicture.asset('assets/icons/$name.svg',
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
          color ?? Theme.of(c).extension<AppColors>()!.ink, BlendMode.srcIn));
}

class GlButton extends StatelessWidget {
  const GlButton(this.label,
      {super.key,
      this.onPressed,
      this.variant = GlButtonVariant.primary,
      this.size = GlButtonSize.md,
      this.block = false,
      this.icon,
      this.trailingIcon});
  final String label;
  final VoidCallback? onPressed;
  final GlButtonVariant variant;
  final GlButtonSize size;
  final bool block;
  final String? icon, trailingIcon;
  Widget build(BuildContext c) {
    final x = Theme.of(c).extension<AppColors>()!;
    final h = size == GlButtonSize.sm
        ? 36.0
        : size == GlButtonSize.lg
            ? 52
            : 48;
    final bg = variant == GlButtonVariant.accent
        ? x.gold
        : variant == GlButtonVariant.secondary
            ? x.leafSoft
            : variant == GlButtonVariant.primary
                ? x.surface
                : Colors.transparent;
    final fg = variant == GlButtonVariant.accent
        ? x.onGold
        : variant == GlButtonVariant.danger
            ? x.dangerInk
            : x.leafInk;
    return SizedBox(
        width: block ? double.infinity : null,
        height: h.toDouble(),
        child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
                backgroundColor: bg,
                foregroundColor: fg,
                shape: const StadiumBorder(),
                side: variant == GlButtonVariant.primary
                    ? BorderSide(color: x.leaf, width: 1.5)
                    : BorderSide.none,
                padding: EdgeInsets.symmetric(
                    horizontal: size == GlButtonSize.sm ? 16 : 24)),
            child: Row(
                mainAxisSize: block ? MainAxisSize.max : MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) GlIcon(icon!, size: 20, color: fg),
                  if (icon != null) const SizedBox(width: 8),
                  Text(label),
                  if (trailingIcon != null) const SizedBox(width: 8),
                  if (trailingIcon != null)
                    GlIcon(trailingIcon!, size: 20, color: fg)
                ])));
  }
}

enum GlButtonVariant { primary, secondary, ghost, accent, danger }

enum GlButtonSize { sm, md, lg }

class GlFab extends StatelessWidget {
  const GlFab({super.key, this.onPressed, this.label = 'Góp ngay'});
  final VoidCallback? onPressed;
  final String label;
  Widget build(BuildContext c) => FloatingActionButton.extended(
      onPressed: onPressed,
      label: Text(label),
      icon: const GlIcon('plus', color: Color(0xff232b20)),
      backgroundColor: Theme.of(c).extension<AppColors>()!.gold);
}

class GlChip extends StatelessWidget {
  const GlChip(this.label,
      {super.key, this.selected = false, this.onSelected, this.icon});
  final String label;
  final bool selected;
  final ValueChanged<bool>? onSelected;
  final String? icon;
  Widget build(BuildContext c) {
    final x = Theme.of(c).extension<AppColors>()!;
    return ChoiceChip(
        label: Text(label),
        avatar: icon == null
            ? null
            : GlIcon(icon!, size: 20, color: selected ? x.leafInk : x.inkMuted),
        selected: selected,
        onSelected: onSelected,
        side: BorderSide(color: selected ? x.leaf : x.line, width: 1.5),
        backgroundColor: x.surface,
        selectedColor: x.surface,
        labelStyle: TextStyle(
            color: selected ? x.leafInk : x.inkMuted,
            fontWeight: FontWeight.w600));
  }
}

class GlSegmentedControl extends StatelessWidget {
  const GlSegmentedControl(
      {super.key,
      required this.labels,
      required this.selected,
      this.onChanged,
      this.block = false});
  final List<String> labels;
  final int selected;
  final ValueChanged<int>? onChanged;
  final bool block;
  Widget build(BuildContext c) => Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Theme.of(c).extension<AppColors>()!.surfaceSunken,
          borderRadius: BorderRadius.circular(999)),
      child: Row(
          mainAxisSize: block ? MainAxisSize.max : MainAxisSize.min,
          children: [
            for (var i = 0; i < labels.length; i++)
              ExpandedOrBox(
                  expanded: block,
                  child: TextButton(
                      onPressed: () => onChanged?.call(i),
                      style: TextButton.styleFrom(
                          backgroundColor: i == selected
                              ? Theme.of(c).extension<AppColors>()!.surface
                              : Colors.transparent,
                          shape: const StadiumBorder()),
                      child: Text(labels[i])))
          ]));
}

class ExpandedOrBox extends StatelessWidget {
  const ExpandedOrBox({required this.expanded, required this.child});
  final bool expanded;
  final Widget child;
  Widget build(c) => expanded ? Expanded(child: child) : child;
}

class GlStatusPill extends StatelessWidget {
  const GlStatusPill(this.text,
      {super.key, this.tone = GlStatusTone.neutral, this.icon});
  final String text;
  final GlStatusTone tone;
  final String? icon;
  Widget build(BuildContext c) {
    final x = Theme.of(c).extension<AppColors>()!;
    final bg = switch (tone) {
      GlStatusTone.ok => x.sproutSoft,
      GlStatusTone.warn => x.warningSoft,
      GlStatusTone.over => x.dangerSoft,
      GlStatusTone.info => x.leafSoft,
      GlStatusTone.neutral => x.surfaceSunken
    };
    final fg = switch (tone) {
      GlStatusTone.ok => x.sproutInk,
      GlStatusTone.warn => x.goldInk,
      GlStatusTone.over => x.dangerInk,
      GlStatusTone.info => x.leafInk,
      GlStatusTone.neutral => x.inkMuted
    };
    return Container(
        height: 26,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration:
            BoxDecoration(color: bg, borderRadius: BorderRadius.circular(999)),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          if (icon != null) GlIcon(icon!, size: 14, color: fg),
          if (icon != null) const SizedBox(width: 4),
          Text(text,
              style: TextStyle(
                  color: fg, fontSize: 12, fontWeight: FontWeight.w600))
        ]));
  }
}

enum GlStatusTone { ok, warn, over, neutral, info }

class GlProgressBar extends StatelessWidget {
  const GlProgressBar(
      {super.key,
      required this.value,
      this.tone = GlProgressTone.leaf,
      this.large = false});
  final double value;
  final GlProgressTone tone;
  final bool large;
  Widget build(BuildContext c) {
    final x = Theme.of(c).extension<AppColors>()!;
    final color = switch (tone) {
      GlProgressTone.leaf => x.leaf,
      GlProgressTone.gold => x.gold,
      GlProgressTone.sprout => x.sprout,
      GlProgressTone.warn => x.warning,
      GlProgressTone.over => x.danger
    };
    return ClipRRect(
        borderRadius: BorderRadius.circular(999),
        child: LinearProgressIndicator(
            value: (value / 100).clamp(0, 1),
            minHeight: large ? 10 : 8,
            backgroundColor: x.surfaceSunken,
            valueColor: AlwaysStoppedAnimation(color)));
  }
}

enum GlProgressTone { leaf, gold, sprout, warn, over }

class GlCategoryIcon extends StatelessWidget {
  const GlCategoryIcon(this.icon, {super.key, this.tone = GlCategoryTone.leaf});
  final String icon;
  final GlCategoryTone tone;
  Widget build(BuildContext c) {
    final x = Theme.of(c).extension<AppColors>()!;
    final bg = switch (tone) {
      GlCategoryTone.leaf => x.leafSoft,
      GlCategoryTone.gold => x.goldSoft,
      GlCategoryTone.sprout => x.sproutSoft,
      GlCategoryTone.danger => x.dangerSoft,
      GlCategoryTone.neutral => x.surfaceSunken
    };
    final fg = switch (tone) {
      GlCategoryTone.leaf => x.leafInk,
      GlCategoryTone.gold => x.goldInk,
      GlCategoryTone.sprout => x.sproutInk,
      GlCategoryTone.danger => x.dangerInk,
      GlCategoryTone.neutral => x.inkMuted
    };
    return Container(
        width: 40,
        height: 40,
        decoration:
            BoxDecoration(color: bg, borderRadius: BorderRadius.circular(12)),
        child: GlIcon(icon, size: 22, color: fg));
  }
}

enum GlCategoryTone { leaf, gold, sprout, danger, neutral }

class GlAmountField extends StatelessWidget {
  const GlAmountField({super.key, this.value = 0, this.income = false});
  final int value;
  final bool income;
  Widget build(BuildContext c) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(value == 0 ? '0' : formatVnd(value).replaceAll(' ₫', ''),
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: value == 0
                        ? Theme.of(c).extension<AppColors>()!.inkSubtle
                        : income
                            ? Theme.of(c).extension<AppColors>()!.sproutInk
                            : Theme.of(c).extension<AppColors>()!.ink)),
            const SizedBox(width: 6),
            Text('₫',
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(c).extension<AppColors>()!.inkSubtle))
          ]);
}

class GlDailyLimitCard extends StatelessWidget {
  const GlDailyLimitCard({super.key, required this.limit, required this.spent});
  final int limit, spent;
  Widget build(BuildContext c) {
    final x = Theme.of(c).extension<AppColors>()!;
    final p = limit == 0 ? 100 : (spent * 100 / limit).round();
    final over = p >= 100;
    final warn = p >= 80;
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: x.surface,
            border: Border.all(color: x.line),
            borderRadius: BorderRadius.circular(24)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('HÔM NAY CÒN ĐƯỢC CHI',
                style: TextStyle(
                    fontSize: 11,
                    color: x.inkMuted,
                    fontWeight: FontWeight.w700)),
            GlStatusPill(
                over
                    ? 'Vượt hạn mức'
                    : warn
                        ? 'Sắp chạm hạn mức'
                        : 'Đang ổn',
                tone: over
                    ? GlStatusTone.over
                    : warn
                        ? GlStatusTone.warn
                        : GlStatusTone.ok)
          ]),
          const SizedBox(height: 12),
          Text(formatVnd((limit - spent).clamp(0, limit)),
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: over ? x.dangerInk : x.ink)),
          const SizedBox(height: 12),
          GlProgressBar(
              value: p.toDouble(),
              large: true,
              tone: over
                  ? GlProgressTone.over
                  : warn
                      ? GlProgressTone.warn
                      : GlProgressTone.leaf)
        ]));
  }
}

class GlGoalCard extends StatelessWidget {
  const GlGoalCard(
      {super.key,
      required this.name,
      required this.target,
      required this.saved,
      this.status = GlGoalStatus.active});
  final String name;
  final int target, saved;
  final GlGoalStatus status;
  Widget build(BuildContext c) {
    final p = target == 0 ? 0 : (saved * 100 / target).round().clamp(0, 100);
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(name, style: Theme.of(c).textTheme.titleMedium),
              Text('${formatVnd(saved)} / ${formatVnd(target)}'),
              GlProgressBar(
                  value: p.toDouble(),
                  tone: status == GlGoalStatus.done
                      ? GlProgressTone.sprout
                      : GlProgressTone.leaf),
              if (status == GlGoalStatus.done) const Text('Đã gặt đủ'),
              if (status == GlGoalStatus.paused) const Text('Tạm dừng')
            ])));
  }
}

enum GlGoalStatus { active, paused, done }
