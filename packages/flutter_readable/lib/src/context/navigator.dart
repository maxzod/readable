import 'package:flutter/material.dart';

/// * Navigation shortcuts
extension RContextNavigator on BuildContext {
  /// shortcut for `Navigator.of(context)`
  NavigatorState get navigator => Navigator.of(this);

  /// shortcut for `Navigator.of(context, rootNavigator: true)`
  NavigatorState get rootNavigator => Navigator.of(this, rootNavigator: true);

  /// shortcut for `Navigator.of(context).canPop()`
  bool get canPop => navigator.canPop();

  /// shortcut for `Navigator.of(context).pop()`
  void pop<T extends Object?>() => navigator.pop();

  /// shortcut for `FocusScopeNode.of(context)`
  FocusScopeNode get focusScope => FocusScope.of(this);

  /// shortcut for `Form.of(context)`
  FormState? get form => Form.of(this);
}
