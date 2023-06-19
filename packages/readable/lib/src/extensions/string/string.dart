///
extension RString on String {
  /// Checks if string is Palindrome.
  bool get isPalindrome => reversed == this;

  /// Reverse a string
  String get reversed => split('').reversed.join();

  /// Uppercase first letter inside string and let the others lowercase
  /// Example:` your name => Your name`
  String get capitalizeFirst {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Uppercase first letter inside each word in string
  /// Example: `your name => Your Name`
  String get capitalize {
    if (isEmpty) return this;
    return split(' ').map((value) => value.capitalizeFirst).join(' ');
  }

  /// return string lines count
  int get linesCount => split('\n').length;

  ///  Replaces part of string after the first occurrence of given delimiter with the [replacement] string.
  ///  If the string does not contain the delimiter, returns [defaultValue] which defaults to the original string.
  String replaceAfter(
    String delimiter,
    String replacement, [
    String? defaultValue,
  ]) {
    final index = indexOf(delimiter);
    return (index == -1)
        ? defaultValue ?? this
        : replaceRange(index + 1, length, replacement);
  }

  /// Replaces part of string before the first occurrence of given delimiter with the [replacement] string.
  ///  If the string does not contain the delimiter, returns [missingDelimiterValue!] which defaults to the original string.
  String replaceBefore(
    String delimiter,
    String replacement, [
    String? defaultValue,
  ]) {
    final index = indexOf(delimiter);
    return (index == -1)
        ? defaultValue ?? this
        : replaceRange(0, index, replacement);
  }

  ///Returns `true` if at least one element matches the given [predicate].
  /// the [predicate] should have only one character
  // ignore: use_function_type_syntax_for_parameters
  bool anyChar(bool predicate(String element)) =>
      split('').any((s) => predicate(s));

  /// Returns last symbol of string or empty string if `this` is null or empty
  String get lastOrEmpty => lastOrNull ?? '';

  /// * return the last character
  /// * return `null` if isEmpty
  String? get lastOrNull => isEmpty ? null : this[length - 1];

  /// return last element or the default value
  // String? lastOr(String def) => lastOrNull ?? def;

  /// return last or  calls if Absent

  // String? lastOrIfAbsent(String Function() ifAbsent) =>
  // lastOrNull ?? ifAbsent();

  /// Returns last symbol of string or empty string if `this` is null or empty
  // String get firstOrEmpty => firstOrNull ?? '';

  /// * return the first character
  /// * return `null` if isEmpty
  // String? get firstOrNull => isEmpty ? null : this[0];

  /// return first or  default value
  // String? firstOr(String def) => firstOrNull ?? def;

  /// return first or  calls if Absent

  // String? firstOrIfAbsent(String Function() ifAbsent) =>
  //     firstOrNull ?? ifAbsent();
}
