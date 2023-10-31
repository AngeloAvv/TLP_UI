import 'package:flutter/widgets.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

abstract class ReactiveYaruSwitchListTile<T>
    extends ReactiveFormField<T, bool> {
  ReactiveYaruSwitchListTile(BuildContext context, {
    super.key,
    required String formControlName,
    Widget? headline,
    Widget? title,
    Widget? subtitle,
  }) : super(
          formControlName: formControlName,
          builder: (field) => YaruSection(
            headline: headline,
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: YaruSwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
              title: title,
              subtitle: subtitle,
              value: field.value ?? false,
              onChanged: field.didChange,
            ),
          ),
        );
}
