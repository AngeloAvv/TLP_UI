import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/reactive_forms/value_accessors/reactive_form_set_value_accessor.dart';

class ReactiveFormSetFieldState
    extends ReactiveFormFieldState<String, Set<String>> {
  @override
  ControlValueAccessor<String, Set<String>> selectValueAccessor() =>
      ReactiveFormSetValueAccessor();
}
