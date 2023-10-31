import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tlp_ui/widgets/reactive_fields/reactive_yaru_toggle_buttons.dart';

class TLPWarnLevelSelector extends ReactiveYaruToggleButtons<String> {
  TLPWarnLevelSelector(
    super.context, {
    super.key,
    required super.formControlName,
  }) : super(
          title: Text(AppLocalizations.of(context)?.label_tlp_warn_level ??
              'label_tlp_warn_level'),
          subtitle: Text(
              AppLocalizations.of(context)?.label_tlp_warn_level_subtitle ??
                  'label_tlp_warn_level_subtitle'),
          headline: Text(
              AppLocalizations.of(context)?.label_tlp_warn_level_headline ??
                  'label_tlp_warn_level_headline'),
          children: {
            Text(AppLocalizations.of(context)?.label_disabled ??
                'label_disabled'): '0',
            Text(AppLocalizations.of(context)?.label_background_tasks ??
                'label_background_tasks'): '1',
            Text(AppLocalizations.of(context)?.label_shell_commands ??
                'label_shell_commands'): '2',
            Text(AppLocalizations.of(context)?.label_both ?? 'label_both'): '3',
          },
        );
}
