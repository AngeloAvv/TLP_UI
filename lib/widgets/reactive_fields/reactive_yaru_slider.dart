import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

abstract class ReactiveYaruSlider extends ReactiveFormField<String, double> {
  ReactiveYaruSlider(
    BuildContext context, {
    super.key,
    required String formControlName,
    Widget? headline,
    Widget? title,
    Widget? subtitle,
    double min = 0,
    double max = 100,
  }) : super(
          formControlName: formControlName,
          builder: (field) => YaruSection(
            headline: headline,
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                YaruTile(
                  title: title,
                  subtitle: subtitle,
                  trailing: Text(
                    '${field.value?.toInt() ?? 0}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Slider(
                    min: min,
                    max: max,
                    value: field.value ?? 0,
                    onChanged: field.didChange,
                  ),
                ),
              ],
            ),
          ),
        );
}
