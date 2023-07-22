part of 'theme.dart';

class ColorTheme {
  static const neutral = MaterialColor(
    0xff64748B,
    <int, Color>{
      50: Color(0xffF8FAFC),
      100: Color(0xffF1F5F9),
      200: Color(0xffE2E8F0),
      300: Color(0xffCBD5E1),
      400: Color(0xff94A3B8),
      500: Color(0xff64748B),
      600: Color(0xff475569),
      700: Color(0xff334155),
      800: Color(0xff1E293B),
      900: Color(0xff0F172A),
    },
  );

  static const warning = MaterialColor(
    0xffF59E0B,
    <int, Color>{
      50: Color(0xffFFFBEB),
      100: Color(0xffFEF3C7),
      200: Color(0xffFDE68A),
      300: Color(0xffFCD34D),
      400: Color(0xffFBBF24),
      500: Color(0xffF59E0B),
      600: Color(0xffD97706),
      700: Color(0xffB45309),
      800: Color(0xff92400E),
      900: Color(0xff78350F),
    },
  );

  static const Color primary = Color(0xFF1642A3);

  //text colors
  static const Color textDark = Color(0xFF222222);
  static const Color textLight = Color(0xFFCFCFCF);
  static const Color textGrey = Color(0xFF999999);
  static const Color shadow = Color(0xFFF4F6F9);
  static const Color textBlue = Color(0xFF3E64D2);

  //status color
  static const Color statusRed = Color(0xFFD23E3E);
  static const Color statusLightRed = Color(0xFFF9E3E3);
  static const Color statusGreen = Color(0xFF4CD964);
  static const Color statusOrange = Color(0xFFFF9212);

  // background colors
  static const Color scaffoldBackground = Color(0xFFF5F5F7);
  static const Color fabRedBackground = Color(0xFFFD6464);
  static const Color brandBackground = Color(0xFFEBEFF9);
  static const Color brandBackgroundLight = Color(0xFFABC4F1);
  static const Color secondaryButtonBackground = Color(0xFFEBEBEB);

  //default
  static const Color border = Color(0xFFD6D6D6);
  static const Color dashBorder = Color(0xFFABC4F1);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;
}
