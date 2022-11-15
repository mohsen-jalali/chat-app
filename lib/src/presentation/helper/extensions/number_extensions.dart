extension IntegerExtension on int {
  String get timeFormat {
    if (this < 10) {
      return "0$this";
    } else {
      return toString();
    }
  }
}
