import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:yaru/yaru.dart';

abstract class ReactiveYaruToggleButtons<T> extends ReactiveFormField<T, T> {
  ReactiveYaruToggleButtons(
    BuildContext context, {
    super.key,
    required String formControlName,
    required Widget title,
    Widget? subtitle,
    Widget? headline,
    required Map<Widget, T> children,
  }) : super(
          formControlName: formControlName,
          builder: (field) => YaruSection(
            headline: headline,
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: YaruTile(
              title: title,
              subtitle: subtitle,
              trailing: ToggleButtons(
                constraints: const BoxConstraints(),
                borderRadius: BorderRadius.circular(16.0),
                isSelected: children.values
                    .map((value) => field.value == value)
                    .toList(growable: false),
                children: children.keys
                    .map(
                      (child) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: child,
                      ),
                    )
                    .toList(growable: false),
                onPressed: (index) {
                  final item = children.values.toList(growable: false)[index];

                  field.didChange(field.value == item ? null : item);
                },
              ),
            ),
          ),
        );
}
