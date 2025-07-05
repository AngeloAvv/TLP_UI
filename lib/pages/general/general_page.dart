import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/general/widgets/tlp_debug_field.dart';
import 'package:tlp_ui/pages/general/widgets/tlp_default_mode_selector.dart';
import 'package:tlp_ui/pages/general/widgets/tlp_enable_switch.dart';
import 'package:tlp_ui/pages/general/widgets/tlp_persistent_default_selector.dart';
import 'package:tlp_ui/pages/general/widgets/tlp_ps_ignore_selector.dart';
import 'package:tlp_ui/pages/general/widgets/tlp_warn_level_selector.dart';

/// Enter the General documentation here
@RoutePage()
class GeneralPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const GeneralPage({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ReactiveForm(
          formGroup: form,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16.0),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  context.l10n?.title_general ?? 'title_general',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              TLPEnableSwitch(
                context,
                formControlName: Defaults.tlpEnable,
              ),
              TLPWarnLevelSelector(
                context,
                formControlName: Defaults.tlpWarnLevel,
              ),
              TLPDefaultModeSelector(
                context,
                formControlName: Defaults.tlpDefaultMode,
              ),
              TLPPersistentDefaultSelector(
                context,
                formControlName: Defaults.tlpPersistentDefault,
              ),
              TLPPSIgnoreSelector(
                context,
                formControlName: Defaults.tlpPsIgnore,
              ),
              TLPDebugField(
                context,
                formControlName: Defaults.tlpDebug,
              ),
            ],
          ),
        ),
      );
}
