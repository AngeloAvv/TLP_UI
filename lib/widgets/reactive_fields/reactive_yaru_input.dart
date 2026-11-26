import 'package:material_ui/material_ui.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// A text input bound to a [FormControl] of [String] built on top of the
/// `material_ui` [TextField].
///
/// `ReactiveTextField` from `reactive_forms` is built on the legacy
/// `flutter/material` library, hence it cannot resolve the `material_ui` theme
/// and localizations.
class ReactiveYaruInput extends ReactiveFocusableFormField<String, String> {
  ReactiveYaruInput({
    super.key,
    required String super.formControlName,
  }) : super(
          builder: (field) {
            final state = field as _ReactiveYaruInputState;

            return TextField(
              controller: state._textController,
              focusNode: state.focusNode,
              enabled: field.control.enabled,
              decoration: InputDecoration(errorText: state.errorText),
              onChanged: field.didChange,
            );
          },
        );

  @override
  ReactiveFormFieldState<String, String> createState() =>
      _ReactiveYaruInputState();
}

class _ReactiveYaruInputState
    extends ReactiveFocusableFormFieldState<String, String> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: value ?? '');
  }

  @override
  void onControlValueChanged(dynamic value) {
    final text = value?.toString() ?? '';
    _textController.value = _textController.value.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
      composing: TextRange.empty,
    );

    super.onControlValueChanged(value);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
