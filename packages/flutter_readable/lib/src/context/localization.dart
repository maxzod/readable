import 'package:flutter/material.dart';

/// * Localization shortcuts
extension RContextLocalization on BuildContext {
  /// shortcut for `Directionality.of(context)`
  TextDirection get directionality => Directionality.of(this);

  /// shortcut for `Directionality.of(context) == TextDirection.rtl`
  bool get isRtl => directionality == TextDirection.rtl;

  /// shortcut for `Directionality.of(context) == TextDirection.ltr`
  bool get isLtr => directionality == TextDirection.ltr;

  /// shortcut for `Localizations.of(context)`
  Locale get locale => Localizations.localeOf(this);
}
