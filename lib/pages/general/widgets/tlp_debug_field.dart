import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_text_field.dart';

class TLPDebugField extends ReactiveYaruTextField {
  TLPDebugField(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_trace_mode ??
              'label_trace_mode'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_trace_mode_subtitle ??
                  'label_trace_mode_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_trace_mode_headline ??
                  'label_trace_mode_headline'),
        );
}
