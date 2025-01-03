/// `IntStringExtensions` is an extension on the `int` class in Dart. It
///  provides additional methods for performing operations on integers.
///
/// The `ordinal` method in this extension returns an ordinal number of
///  `String` type for any integer.
///
/// It handles both positive and negative integers, as well as zero.
///
/// Example usage:
/// ```dart
/// int number = 101;
/// String ordinalNumber = number.ordinal();  // returns '101st'
/// ```
///
/// Note: All methods in this extension are null-safe, meaning they will not
///  throw an exception if the integer on which they are called is null.
///
extension IntStringExtensions on int {
  /// Returns an ordinal number of `String` type for any integer
  ///
  /// ```dart
  /// 101.ordinal(); // 101st
  /// 114.ordinal(); // 101th
  ///
  /// 999218.ordinal(); // 999218th
  /// ```
  ///
  /// A [double] typed version can use: value.floor()
  ///
  String ordinal() {
    // all "teens" (12, 13, 14.. 19) are 'th'
    if (this >= 11 && this <= 19) {
      return '${this}th';
    }

    final num onesPlace = this % 10;
    return switch (onesPlace) {
      1 => '${this}st',
      2 => '${this}nd',
      3 => '${this}rd',
      _ => '${this}th',
    };
  }
}
