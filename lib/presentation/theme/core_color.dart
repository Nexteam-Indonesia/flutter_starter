part of 'theme.dart';

class AppCoreColor {
  static const AppCoreColorType primary = AppCoreColorType.primary;
  static const AppCoreColorType secondary = AppCoreColorType.secondary;
  static const AppCoreColorType success = AppCoreColorType.success;
  static const AppCoreColorType error = AppCoreColorType.error;
  static const AppCoreColorType info = AppCoreColorType.info;
  static const AppCoreColorNeutral neutral = AppCoreColorNeutral.main;
}

class AppCoreColorType {
  final Color main;
  final Color surface;
  final Color border;
  final Color hover;
  final Color pressed;
  final Color focus;

  const AppCoreColorType({
    required this.main,
    required this.surface,
    required this.border,
    required this.hover,
    required this.pressed,
    required this.focus,
  });

  static const AppCoreColorType primary = AppCoreColorType(
    main: Color(0xFFC1272D),
    surface: Color.fromRGBO(193, 39, 45, 0.08),
    border: Color(0xFFEAB7B9),
    hover: Color(0xFFA12025),
    pressed: Color(0xFF601316),
    focus: Color.fromRGBO(193, 39, 45, 0.2),
  );

  static const AppCoreColorType secondary = AppCoreColorType(
    main: Color(0xFFF6C23E),
    surface: Color.fromRGBO(246, 194, 62, 0.08),
    border: Color(0xFFF9D67E),
    hover: Color(0xFFA48129),
    pressed: Color(0xFF524115),
    focus: Color(0xFFFCEBBF),
  );

  static const AppCoreColorType success = AppCoreColorType(
    main: Color(0xFF27C165),
    surface: Color(0xFFEAFFF3),
    border: Color(0xFFB9EED0),
    hover: Color(0xFF26AA5E),
    pressed: Color(0xFF176638),
    focus: Color.fromRGBO(46, 204, 113, 0.2),
  );

  static const AppCoreColorType error = AppCoreColorType(
    main: Color(0xFFE2480F),
    surface: Color(0xFFFDE8CE),
    border: Color(0xFFFCCA9D),
    hover: Color(0xFFA21C07),
    pressed: Color(0xFF6C0203),
    focus: Color.fromRGBO(204, 34, 0, 0.2),
  );

  static const AppCoreColorType info = AppCoreColorType(
    main: Color(0xFF2798FF),
    surface: Color(0xFFD4EAFF),
    border: Color(0xFFB7DDFF),
    hover: Color(0xFF207FD4),
    pressed: Color(0xFF134C80),
    focus: Color.fromRGBO(39, 152, 255, 0.2),
  );
}

class AppCoreColorNeutral {
  final Color n10;
  final Color n20;
  final Color n30;
  final Color n40;
  final Color n50;
  final Color n60;
  final Color n70;
  final Color n80;
  final Color n90;
  final Color n100;

  const AppCoreColorNeutral({
    required this.n10,
    required this.n20,
    required this.n30,
    required this.n40,
    required this.n50,
    required this.n60,
    required this.n70,
    required this.n80,
    required this.n90,
    required this.n100,
  });

  static const AppCoreColorNeutral main = AppCoreColorNeutral(
    n10: Color(0xFFFFFFFF),
    n20: Color(0xFFF5F5F5),
    n30: Color(0xFFEDEDED),
    n40: Color(0xFFD6D6D6),
    n50: Color(0xFFC2C2C2),
    n60: Color(0xFF878787),
    n70: Color(0xFF606060),
    n80: Color(0xFF383838),
    n90: Color(0xFF403A3A),
    n100: Color(0xFF101010),
  );
}
