import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_boost_on_ac_switch.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_boost_on_bat_switch.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_driver_opmode_on_ac_selector.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_driver_opmode_on_bat_selector.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_energy_perf_policy_on_ac_selector.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_energy_perf_policy_on_bat_selector.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_hwp_dyn_boost_on_ac_switch.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_hwp_dyn_boost_on_bat_switch.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_max_perf_on_ac_slider.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_max_perf_on_bat_slider.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_min_perf_on_ac_slider.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_min_perf_on_bat_slider.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_scaling_governor_on_ac_selector.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_scaling_governor_on_bat_selector.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_scaling_max_freq_on_ac_slider.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_scaling_max_freq_on_bat_slider.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_scaling_min_freq_on_ac_slider.dart';
import 'package:tlp_ui/pages/processor/widgets/cpu_scaling_min_freq_on_bat_slider.dart';

/// Enter the Processor documentation here
@RoutePage()
class ProcessorPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const ProcessorPage({super.key, required this.form});

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
                  context.l10n?.title_processor ?? 'title_processor',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              CpuDriverOpmodeOnAcSelector(
                context,
                formControlName: Defaults.cpuDriverOpmodeOnAc,
              ),
              CpuDriverOpmodeOnBatSelector(
                context,
                formControlName: Defaults.cpuDriverOpmodeOnBat,
              ),
              CpuScalingGovernorOnAcSelector(
                context,
                formControlName: Defaults.cpuScalingGovernorOnAc,
              ),
              CpuScalingGovernorOnBatSelector(
                context,
                formControlName: Defaults.cpuScalingGovernorOnBat,
              ),
              CpuScalingMinFreqOnAcSlider(
                context,
                formControlName: Defaults.cpuScalingMinFreqOnAc,
              ),
              CpuScalingMinFreqOnBatSlider(
                context,
                formControlName: Defaults.cpuScalingMinFreqOnBat,
              ),
              CpuScalingMaxFreqOnAcSlider(
                context,
                formControlName: Defaults.cpuScalingMaxFreqOnAc,
              ),
              CpuScalingMaxFreqOnBatSlider(
                context,
                formControlName: Defaults.cpuScalingMaxFreqOnBat,
              ),
              CpuEnergyPerfPolicyOnAcSelector(
                context,
                formControlName: Defaults.cpuEneregyPerfPolicyOnAc,
              ),
              CpuEnergyPerfPolicyOnBatSelector(
                context,
                formControlName: Defaults.cpuEneregyPerfPolicyOnBat,
              ),
              CpuMinPerfOnAcSlider(
                context,
                formControlName: Defaults.cpuMinPerfOnAc,
              ),
              CpuMinPerfOnBatSlider(
                context,
                formControlName: Defaults.cpuMinPerfOnBat,
              ),
              CpuMaxPerfOnAcSlider(
                context,
                formControlName: Defaults.cpuMaxPerfOnAc,
              ),
              CpuMaxPerfOnBatSlider(
                context,
                formControlName: Defaults.cpuMaxPerfOnBat,
              ),
              CpuBoostOnAcSwitch(
                context,
                formControlName: Defaults.cpuBoostOnAc,
              ),
              CpuBoostOnBatSwitch(
                context,
                formControlName: Defaults.cpuBoostOnBat,
              ),
              CpuHwpDynBoostOnAcSwitch(
                context,
                formControlName: Defaults.cpuHwpDynBoostOnAc,
              ),
              CpuHwpDynBoostOnBatSwitch(
                context,
                formControlName: Defaults.cpuHwpDynBoostOnBat,
              ),
            ],
          ),
        ),
      );
}
