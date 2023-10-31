import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/platform/widgets/mem_sleep_on_ac_selector.dart';
import 'package:tlp_ui/pages/platform/widgets/mem_sleep_on_bat_selector.dart';
import 'package:tlp_ui/pages/platform/widgets/platform_profile_on_ac_selector.dart';
import 'package:tlp_ui/pages/platform/widgets/platform_profile_on_bat_selector.dart';

/// Enter the Platform documentation here
@RoutePage()
class PlatformPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const PlatformPage({super.key, required this.form});

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
                  AppLocalizations.of(context)?.title_platform ??
                      'title_platform',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              PlatformProfileOnAcSelector(
                context,
                formControlName: Defaults.platformProfileOnAc,
              ),
              PlatformProfileOnBatSelector(
                context,
                formControlName: Defaults.platformProfileOnBat,
              ),
              MemSleepOnAcSelector(
                context,
                formControlName: Defaults.memSleepOnAc,
              ),
              MemSleepOnBatSelector(
                context,
                formControlName: Defaults.memSleepOnBat,
              ),
            ],
          ),
        ),
      );
}
