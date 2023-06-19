import 'package:flutter/material.dart';
import 'package:flutter_readable/src/context/theme.dart';

extension RContextTextTheme on BuildContext {
  /// shortcut for `Theme.of(context).textTheme.bodySmall`
  TextStyle? get bodySmall => textTheme.bodySmall;

  /// shortcut for `Theme.of(context).textTheme.bodyMedium`
  TextStyle? get bodyMedium => textTheme.bodyMedium;

  /// shortcut for `Theme.of(context).textTheme.bodyLarge`
  TextStyle? get bodyLarge => textTheme.bodyLarge;

  /// shortcut for `Theme.of(context).textTheme.labelSmall`
  TextStyle? get labelSmall => textTheme.labelSmall;

  /// shortcut for `Theme.of(context).textTheme.labelMedium`
  TextStyle? get labelMedium => textTheme.labelMedium;

  /// shortcut for `Theme.of(context).textTheme.labelLarge`
  TextStyle? get labelLarge => textTheme.labelLarge;

  /// shortcut for `Theme.of(context)..textTheme.headline1`
  TextStyle? get displaySmall => textTheme.displaySmall;

  /// shortcut for `Theme.of(context)..textTheme.headline1`
  TextStyle? get displayMedium => textTheme.displayMedium;

  /// shortcut for `Theme.of(context)..textTheme.headline1`
  TextStyle? get displayLarge => textTheme.displayLarge;

  /// shortcut for `Theme.of(context).textTheme.headlineSmall`
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  /// shortcut for `Theme.of(context).textTheme.headlineMedium`
  TextStyle? get headlineMedium => textTheme.headlineMedium;

  /// shortcut for `Theme.of(context).textTheme.headlineLarge`
  TextStyle? get headlineLarge => textTheme.headlineLarge;

  /// shortcut for `Theme.of(context).textTheme.titleSmall`
  TextStyle? get titleSmall => textTheme.titleSmall;

  /// shortcut for `Theme.of(context).textTheme.titleMedium`
  TextStyle? get titleMedium => textTheme.titleMedium;

  /// shortcut for `Theme.of(context).textTheme.titleLarge`
  TextStyle? get titleLarge => textTheme.titleLarge;
}
