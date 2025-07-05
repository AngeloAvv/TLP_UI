import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class USBAllowlistField extends ReactiveYaruTextField {
  USBAllowlistField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title:
              Text(context.l10n?.label_usb_allowlist ?? 'label_usb_allowlist'),
          subtitle: Text(context.l10n?.label_usb_allowlist_subtitle ??
              'label_usb_allowlist_subtitle'),
          headline: Text(context.l10n?.label_usb_allowlist_headline ??
              'label_usb_allowlist_headline'),
        );
}
