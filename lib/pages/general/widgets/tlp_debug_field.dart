import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class TLPDebugField extends ReactiveYaruTextField {
  TLPDebugField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(context.l10n?.label_trace_mode ?? 'label_trace_mode'),
          subtitle: Text(context.l10n?.label_trace_mode_subtitle ??
              'label_trace_mode_subtitle'),
          headline: Text(context.l10n?.label_trace_mode_headline ??
              'label_trace_mode_headline'),
        );
}
