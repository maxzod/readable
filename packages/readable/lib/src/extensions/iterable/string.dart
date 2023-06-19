import 'package:readable/src/extensions/iterable/extensions.dart';

///
extension RIterableString on Iterable<String> {
  /// return counter of empty elements in the iterable
  /// does not count the null values
  int countEmpty({bool trim = true}) => count(
        (e) => trim ? e.trim().isEmpty : e.isEmpty,
      );

  /// return counter of empty elements in the iterable
  /// does not count the null values
  int countNotEmpty() => count((e) => e.trim().isNotEmpty);
}
