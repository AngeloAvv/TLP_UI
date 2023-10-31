import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class BayDeviceField extends ReactiveYaruTextField {
  BayDeviceField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_bay_device ??
              'label_bay_device'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_bay_device_subtitle ??
                  'label_bay_device_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_bay_device_headline ??
                  'label_bay_device_headline'),
        );
}
