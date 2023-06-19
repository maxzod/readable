import 'package:flutter/material.dart';

/// * MediaQuery shortcuts
extension RContextMediaQuery on BuildContext {
  /// shortcut for `MediaQuery.of(context)`
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// shortcut for `MediaQuery.of(context).size`
  Size get size => mediaQuery.size;

  /// shortcut for `MediaQuery.of(context).size.width`
  double get width => size.width;

  /// shortcut for `MediaQuery.of(context).size.height`
  double get height => size.height;

  /// shortcut for `MediaQuery.of(this).size.aspectRatio`
  double get aspectRatio => size.aspectRatio;

  /// shortcut for `MediaQuery.of(context).padding`
  EdgeInsets get mediaQueryPadding => mediaQuery.padding;

  /// shortcut for `MediaQuery.of(context).orientation`
  Orientation get orientation => mediaQuery.orientation;

  /// shortcut for `MediaQuery.of(context).orientation == Orientation.portrait`
  bool get isPortrait => orientation == Orientation.portrait;

  /// shortcut for `MediaQuery.of(context).orientation == Orientation.landscape`
  bool get isLandscape => orientation == Orientation.landscape;

  /// shortcut for `MediaQuery.of(context).alwaysUse24HourFormat`
  bool get alwaysUse24HourFormat => mediaQuery.alwaysUse24HourFormat;
}
