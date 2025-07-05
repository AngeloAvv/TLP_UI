import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class USBDenylistField extends ReactiveYaruTextField {
  USBDenylistField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_usb_denylist ?? 'label_usb_denylist'),
          subtitle: Text(context.l10n?.label_usb_denylist_subtitle ??
              'label_usb_denylist_subtitle'),
          headline: Text(context.l10n?.label_usb_denylist_headline ??
              'label_usb_denylist_headline'),
        );
}
