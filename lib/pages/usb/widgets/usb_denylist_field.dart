import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class USBDenylistField extends ReactiveYaruTextField {
  USBDenylistField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_usb_denylist ??
              'label_usb_denylist'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_usb_denylist_subtitle ??
                  'label_usb_denylist_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_usb_denylist_headline ??
                  'label_usb_denylist_headline'),
        );
}
