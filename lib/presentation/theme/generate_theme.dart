part of 'theme.dart';

class GenerateTheme {
  static InputDecoration inputDecoration(String hint) => InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: ColorTheme.primary, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: ColorTheme.neutral[200]!, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: ColorTheme.neutral[400]!, width: 1),
        ),
      );

  static List<Widget> generateDots(int length, int index) {
    List<Widget> widgets = [];

    for (var i = 0; i < length; i++) {
      widgets.add(
        AnimatedContainer(
          margin: const EdgeInsets.only(right: 4),
          height: (index == i)
              ? 12
              : index + 1 == i
                  ? 8
                  : 4,
          width: (index == i)
              ? 12
              : index + 1 == i
                  ? 8
                  : 4,
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            color: index == i ? Colors.white : ColorTheme.neutral[200],
            borderRadius: BorderRadius.circular(12),
            border: index == i
                ? Border.all(color: ColorTheme.primary, width: 2)
                : const Border.fromBorderSide(BorderSide.none),
          ),
        ),
      );
    }

    return widgets;
  }
}
