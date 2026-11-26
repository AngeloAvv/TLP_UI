import 'package:material_ui/material_ui.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_input.dart';
import 'package:yaru/yaru.dart';

class ReactiveYaruTextField extends StatelessWidget {
  final Widget? headline;
  final Widget title;
  final Widget? subtitle;
  final String formControlName;
  final bool dense;

  const ReactiveYaruTextField(
    BuildContext context, {
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
            YaruListTile(
              title: title,
              subtitle: subtitle,
              trailing: dense
                  ? SizedBox(
                      width: 200,
                      child:
                          ReactiveYaruInput(formControlName: formControlName),
                    )
                  : null,
            ),
            if (!dense)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ReactiveYaruInput(formControlName: formControlName),
              ),
          ],
        ),
      );
}
