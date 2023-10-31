import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/constants.dart';

class ReactiveFormSetValueAccessor
    extends ControlValueAccessor<String, Set<String>> {
  @override
  Set<String>? modelToViewValue(String? modelValue) => modelValue?.let(
      (modelValue) => Set.from(modelValue.split(K.defaultValueSeparator)));

  @override
  String? viewToModelValue(Set<String>? viewValue) =>
      viewValue?.join(K.defaultValueSeparator);
}
