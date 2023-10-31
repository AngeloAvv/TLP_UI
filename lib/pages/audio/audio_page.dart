import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/audio/widgets/sound_power_save_controller_selector.dart';
import 'package:tlp_ui/pages/audio/widgets/sound_power_save_on_ac_field.dart';
import 'package:tlp_ui/pages/audio/widgets/sound_power_save_on_bat_field.dart';

/// Enter the Audio documentation here
@RoutePage()
class AudioPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const AudioPage({super.key, required this.form});

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
                  AppLocalizations.of(context)?.title_audio ?? 'title_audio',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              SoundPowerSaveOnAcField(
                context,
                formControlName: Defaults.soundPowerSaveOnAc,
              ),
              SoundPowerSaveOnBatField(
                context,
                formControlName: Defaults.soundPowerSaveOnBat,
              ),
              SoundPowerSaveControllerSelector(
                context,
                formControlName: Defaults.soundPowerSaveController,
              ),
            ],
          ),
        ),
      );
}
