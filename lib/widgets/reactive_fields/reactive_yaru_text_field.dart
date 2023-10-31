import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:yaru_widgets/widgets.dart';

class ReactiveYaruTextField extends StatelessWidget {
  final Widget? headline;
  final Widget title;
  final Widget? subtitle;
  final String formControlName;
  final bool dense;

  const ReactiveYaruTextField(BuildContext context, {
    super.key,
    this.headline,
    required this.title,
    this.subtitle,
    required this.formControlName,
    this.dense = false,
  });

  @override
  Widget build(BuildContext context) => YaruSection(
        headline: headline,
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YaruTile(
              title: title,
              subtitle: subtitle,
              trailing: dense
                  ? SizedBox(
                      width: 200,
                      child:
                          ReactiveTextField(formControlName: formControlName),
                    )
                  : null,
            ),
            if (!dense)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ReactiveTextField(formControlName: formControlName),
              ),
          ],
        ),
      );
}
