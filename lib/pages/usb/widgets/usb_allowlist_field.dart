import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class USBAllowlistField extends ReactiveYaruTextField {
  USBAllowlistField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_usb_allowlist ??
              'label_usb_allowlist'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_usb_allowlist_subtitle ??
                  'label_usb_allowlist_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_usb_allowlist_headline ??
                  'label_usb_allowlist_headline'),
        );
}
