class DateCommonUtils {
  static Duration compareTime(String afterDate) {
    DateTime now = DateTime.now();
    DateTime after = DateTime.parse(afterDate);
    return now.difference(after);
  }
}
