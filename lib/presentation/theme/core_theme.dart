part of 'theme.dart';

class AppCoreTheme {
  static const int primaryColorValue = 0xFFC1272D;
  static const primaryColor = Color(primaryColorValue);
  static const MaterialColor primarySwatch = MaterialColor(
    primaryColorValue,
    <int, Color>{
      50: Color(0xFFF8E5E6),
      100: Color(0xFFECBEC0),
      200: Color(0xFFE09396),
      300: Color(0xFFD4686C),
      400: Color(0xFFCA474D),
      500: Color(primaryColorValue),
      600: Color(0xFFBB2328),
      700: Color(0xFFB31D22),
      800: Color(0xFFAB171C),
      900: Color(0xFF9E0E11),
    },
  );

  static const int accentColorValue = 0xFFFF9A9B;
  static const accentColor = Color(accentColorValue);
  static const MaterialColor accentSwatch = MaterialColor(
    accentColorValue,
    <int, Color>{
      100: Color(0xFFFFCDCE),
      200: Color(accentColorValue),
      400: Color(0xFFFF6769),
      700: Color(0xFFFF4D50),
    },
  );

  static SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemStatusBarContrastEnforced: true,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarContrastEnforced: true,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: Colors.grey.shade100,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: primaryColor,
    ),
    textTheme: GoogleFonts.robotoTextTheme(),
    // AppBar Theme
    appBarTheme: AppBarTheme(
      elevation: 10.0,
      toolbarHeight: kToolbarHeight + 10,
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      systemOverlayStyle: systemUiOverlayStyle,
      iconTheme: const IconThemeData(
        color: primaryColor,
      ),
      actionsIconTheme: const IconThemeData(
        color: primaryColor,
      ),
      titleTextStyle: TextStyle(
        fontSize: 18,
        color: const Color(0xFF101010),
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
    ),
    // BottomNavigationBar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 5.0,
      backgroundColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
      ),
      selectedLabelStyle: TextStyle(
        color: primaryColor,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.grey,
      ),
      unselectedItemColor: Colors.white,
      selectedItemColor: primaryColor,
    ),
    // Bottom AppBar Theme
    bottomAppBarTheme: const BottomAppBarTheme(
      elevation: 10,
      color: Colors.white,
      surfaceTintColor: Colors.white,
    ),
    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        surfaceTintColor: primaryColor,
        foregroundColor: Colors.white,
        fixedSize: const Size.fromHeight(kBottomNavigationBarHeight - 12.5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    ),
    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
      ),
    ),
    // FAB Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      shape: CircleBorder(),
    ),
    // ListTile Theme
    listTileTheme: const ListTileThemeData(
      dense: true,
    ),
    // Input Decoration
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      hintStyle: TextStyle(
        color: Colors.grey.shade500,
        fontSize: 14,
      ),
      // contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: const TextStyle(
        height: 0,
      ),
      errorMaxLines: 1,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      constraints: const BoxConstraints(
        minHeight: 55,
      ),
    ),
    // Modal Dialog Theme
    dialogTheme: DialogTheme(
      // titleTextStyle: TextStyle(fontSize: 12,),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    // Card Theme
    cardTheme: CardTheme(
      elevation: 1.0,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    // Tab Bar Theme
    tabBarTheme: TabBarTheme(
      labelPadding: EdgeInsets.zero,
      labelColor: primaryColor,
      labelStyle: const TextStyle(
        color: primaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelColor: AppCoreColor.neutral.n60,
      unselectedLabelStyle: TextStyle(
        color: AppCoreColor.neutral.n60,
        fontSize: 14,
      ),
      dividerColor: Colors.transparent,
      indicatorColor: primaryColor,
      indicatorSize: TabBarIndicatorSize.label,
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return AppCoreColor.primary.focus;
        }

        return null;
      }),
    ),
    // ExpansionTile
    expansionTileTheme: const ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.transparent,
        ),
      ),
    ),
    // CheckBox Button Theme
    checkboxTheme: CheckboxThemeData(
      splashRadius: 5.0,
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return primaryColor;
        }

        return null;
      }),
    ),
    // Radio Button Theme
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return primaryColor;
        }

        return primaryColor;
      }),
    ),
  );
}
