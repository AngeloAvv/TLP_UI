import 'package:flutter/material.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class TLPWarnLevelSelector extends ReactiveYaruToggleButtons<String> {
  TLPWarnLevelSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(
              context.l10n?.label_tlp_warn_level ?? 'label_tlp_warn_level'),
          subtitle: Text(context.l10n?.label_tlp_warn_level_subtitle ??
              'label_tlp_warn_level_subtitle'),
          headline: Text(context.l10n?.label_tlp_warn_level_headline ??
              'label_tlp_warn_level_headline'),
          children: {
            Text(context.l10n?.label_disabled ?? 'label_disabled'): '0',
            Text(context.l10n?.label_background_tasks ??
                'label_background_tasks'): '1',
            Text(context.l10n?.label_shell_commands ?? 'label_shell_commands'):
                '2',
            Text(context.l10n?.label_both ?? 'label_both'): '3',
          },
        );
}
