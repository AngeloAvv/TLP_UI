import 'package:flutter/material.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:yaru/yaru.dart';

abstract class ReactiveYaruMultiToggleButtons<T>
    extends ReactiveFormField<T, Set<T>> {
  ReactiveYaruMultiToggleButtons(
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
                    .map((value) => field.value?.contains(value) ?? false)
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
                  final items =
                      field.value?.let((items) => Set<T>.from(items)) ?? <T>{};
                  final item = children.values.toList(growable: false)[index];

                  if (items.contains(item)) {
                    items.remove(item);
                  } else {
                    items.add(item);
                  }

                  field.didChange(items);
                },
              ),
            ),
          ),
        );
}
