import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/graphics/widgets/intel_gpu_boost_freq_on_ac_slider.dart';
import 'package:tlp_ui/pages/graphics/widgets/intel_gpu_boost_freq_on_bat_slider.dart';
import 'package:tlp_ui/pages/graphics/widgets/intel_gpu_max_freq_on_ac_slider.dart';
import 'package:tlp_ui/pages/graphics/widgets/intel_gpu_max_freq_on_bat_slider.dart';
import 'package:tlp_ui/pages/graphics/widgets/intel_gpu_min_freq_on_ac_slider.dart';
import 'package:tlp_ui/pages/graphics/widgets/intel_gpu_min_freq_on_bat_slider.dart';
import 'package:tlp_ui/pages/graphics/widgets/radeon_dpm_perf_level_on_ac_selector.dart';
import 'package:tlp_ui/pages/graphics/widgets/radeon_dpm_perf_level_on_bat_selector.dart';
import 'package:tlp_ui/pages/graphics/widgets/radeon_dpm_state_on_ac_selector.dart';
import 'package:tlp_ui/pages/graphics/widgets/radeon_dpm_state_on_bat_selector.dart';
import 'package:tlp_ui/pages/graphics/widgets/radeon_power_profile_on_ac_selector.dart';
import 'package:tlp_ui/pages/graphics/widgets/radeon_power_profile_on_bat_selector.dart';

/// Enter the Graphics documentation here
@RoutePage()
class GraphicsPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const GraphicsPage({
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
                  context.l10n?.title_graphics ?? 'title_graphics',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              IntelGpuMinFreqOnAcSlider(
                context,
                formControlName: Defaults.intelGpuMinFreqOnAc,
              ),
              IntelGpuMinFreqOnBatSlider(
                context,
                formControlName: Defaults.intelGpuMinFreqOnBat,
              ),
              IntelGpuMaxFreqOnAcSlider(
                context,
                formControlName: Defaults.intelGpuMaxFreqOnAc,
              ),
              IntelGpuMaxFreqOnBatSlider(
                context,
                formControlName: Defaults.intelGpuMaxFreqOnBat,
              ),
              IntelGpuBoostFreqOnAcSlider(
                context,
                formControlName: Defaults.intelGpuBoostFreqOnAc,
              ),
              IntelGpuBoostFreqOnBatSlider(
                context,
                formControlName: Defaults.intelGpuBoostFreqOnBat,
              ),
              RadeonDpmPerfLevelOnAcSelector(
                context,
                formControlName: Defaults.radeonDpmPerfLevelOnAc,
              ),
              RadeonDpmPerfLevelOnBatSelector(
                context,
                formControlName: Defaults.radeonDpmPerfLevelOnBat,
              ),
              RadeonDpmStateOnAcSelector(
                context,
                formControlName: Defaults.radeonDpmStateOnAc,
              ),
              RadeonDpmStateOnBatSelector(
                context,
                formControlName: Defaults.radeonDpmStateOnBat,
              ),
              RadeonPowerProfileOnAcSelector(
                context,
                formControlName: Defaults.radeonPowerProfileOnAc,
              ),
              RadeonPowerProfileOnBatSelector(
                context,
                formControlName: Defaults.radeonPowerProfileOnBat,
              ),
            ],
          ),
        ),
      );
}
