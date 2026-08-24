class DateCommonUtils {
  static Duration compareTime(String afterDate) {
    final now = DateTime.now();
    final after = DateTime.parse(afterDate);
    return now.difference(after);
  }
}
