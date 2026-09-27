import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors(
      {required this.canvas,
      required this.surface,
      required this.surfaceSunken,
      required this.line,
      required this.ink,
      required this.inkMuted,
      required this.inkSubtle,
      required this.leaf,
      required this.leafPressed,
      required this.onLeaf,
      required this.leafSoft,
      required this.leafInk,
      required this.gold,
      required this.onGold,
      required this.goldSoft,
      required this.goldInk,
      required this.sprout,
      required this.sproutInk,
      required this.sproutSoft,
      required this.warning,
      required this.warningSoft,
      required this.danger,
      required this.onDanger,
      required this.dangerSoft,
      required this.dangerInk,
      required this.inverse,
      required this.onInverse,
      required this.scrim,
      required this.focus});
  final Color canvas,
      surface,
      surfaceSunken,
      line,
      ink,
      inkMuted,
      inkSubtle,
      leaf,
      leafPressed,
      onLeaf,
      leafSoft,
      leafInk,
      gold,
      onGold,
      goldSoft,
      goldInk,
      sprout,
      sproutInk,
      sproutSoft,
      warning,
      warningSoft,
      danger,
      onDanger,
      dangerSoft,
      dangerInk,
      inverse,
      onInverse,
      scrim,
      focus;
  static const light = AppColors(
      canvas: Color(0xfffafaf5),
      surface: Color(0xffffffff),
      surfaceSunken: Color(0xfff4f5ee),
      line: Color(0xffe6e9dd),
      ink: Color(0xff232b20),
      inkMuted: Color(0xff41493a),
      inkSubtle: Color(0xff717a69),
      leaf: Color(0xff5fa33a),
      leafPressed: Color(0xff4f8a30),
      onLeaf: Color(0xffffffff),
      leafSoft: Color(0xffeef8e8),
      leafInk: Color(0xff2b6c01),
      gold: Color(0xfff2b84b),
      onGold: Color(0xff232b20),
      goldSoft: Color(0xfffef7e6),
      goldInk: Color(0xff7d5700),
      sprout: Color(0xff10b981),
      sproutInk: Color(0xff006c49),
      sproutSoft: Color(0xffecfdf5),
      warning: Color(0xffd97706),
      warningSoft: Color(0xfffef3c7),
      danger: Color(0xffdc2626),
      onDanger: Color(0xffffffff),
      dangerSoft: Color(0xfffee2e2),
      dangerInk: Color(0xffba1a1a),
      inverse: Color(0xff2b3327),
      onInverse: Color(0xffebf4e2),
      scrim: Color(0x52232b20),
      focus: Color(0xff2b6c01));
  static const dark = AppColors(
      canvas: Color(0xff141a12),
      surface: Color(0xff1e251b),
      surfaceSunken: Color(0xff262e22),
      line: Color(0xff2e3829),
      ink: Color(0xffeef2e8),
      inkMuted: Color(0xffa3ad9c),
      inkSubtle: Color(0xff8a9683),
      leaf: Color(0xff6fbf45),
      leafPressed: Color(0xff5fa33a),
      onLeaf: Color(0xff10240a),
      leafSoft: Color(0xff22331a),
      leafInk: Color(0xff91d969),
      gold: Color(0xfff2b84b),
      onGold: Color(0xff232b20),
      goldSoft: Color(0xff3a2e14),
      goldInk: Color(0xfff7bd4f),
      sprout: Color(0xff4edea3),
      sproutInk: Color(0xff4edea3),
      sproutSoft: Color(0xff173226),
      warning: Color(0xfff59e0b),
      warningSoft: Color(0xff3a2e14),
      danger: Color(0xfff87171),
      onDanger: Color(0xff2a0a0a),
      dangerSoft: Color(0xff3b1d1a),
      dangerInk: Color(0xffffb4ab),
      inverse: Color(0xffe2ebda),
      onInverse: Color(0xff161e13),
      scrim: Color(0x8f000000),
      focus: Color(0xff91d969));
  @override
  AppColors copyWith({Color? canvas}) => this;
  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) => this;
}

class AppSpacing {
  static const xs = 4.0, sm = 8.0, md = 16.0, lg = 24.0, xl = 32.0;
}

class AppRadius {
  static const sm = 4.0,
      defaultRadius = 8.0,
      md = 12.0,
      lg = 16.0,
      xl = 24.0,
      full = 9999.0;
}

class AppShadows {
  static const card = [
    BoxShadow(color: Color(0x0a232b20), blurRadius: 16, offset: Offset(0, 4))
  ];
  static const floating = [
    BoxShadow(color: Color(0x24232b20), blurRadius: 20, offset: Offset(0, 8))
  ];
}

class AppTypography {
  static const font = 'Plus Jakarta Sans';
  static TextTheme get textTheme => const TextTheme(
      displayMedium: TextStyle(
          fontFamily: font,
          fontSize: 36,
          height: 44 / 36,
          fontWeight: FontWeight.w800,
          letterSpacing: -1.08),
      titleLarge: TextStyle(
          fontFamily: font,
          fontSize: 26,
          height: 34 / 26,
          fontWeight: FontWeight.w700),
      titleMedium: TextStyle(
          fontFamily: font,
          fontSize: 20,
          height: 28 / 20,
          fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontFamily: font, fontSize: 16, height: 24 / 16),
      bodyMedium: TextStyle(fontFamily: font, fontSize: 14, height: 20 / 14),
      bodySmall: TextStyle(fontFamily: font, fontSize: 12, height: 16 / 12),
      labelLarge: TextStyle(
          fontFamily: font,
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w600),
      labelMedium: TextStyle(
          fontFamily: font,
          fontSize: 12,
          height: 16 / 12,
          fontWeight: FontWeight.w600),
      labelSmall: TextStyle(
          fontFamily: font,
          fontSize: 11,
          height: 14 / 11,
          fontWeight: FontWeight.w700));
}

ThemeData gopLuaTheme(Brightness brightness) {
  final c = brightness == Brightness.dark ? AppColors.dark : AppColors.light;
  return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      fontFamily: AppTypography.font,
      scaffoldBackgroundColor: c.canvas,
      textTheme: AppTypography.textTheme,
      colorScheme: ColorScheme(
          brightness: brightness,
          primary: c.leaf,
          onPrimary: c.onLeaf,
          onSurface: c.ink,
          secondary: c.gold,
          onSecondary: c.onGold,
          surface: c.surface,
          error: c.danger,
          onError: c.onDanger),
      extensions: [c]);
}

class AppTheme {
  static ThemeData light() => gopLuaTheme(Brightness.light);
  static ThemeData dark() => gopLuaTheme(Brightness.dark);
}
