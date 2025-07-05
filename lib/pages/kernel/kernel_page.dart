import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/kernel/widgets/nmi_watchdog_switch.dart';

/// Enter the Kernel documentation here
@RoutePage()
class KernelPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const KernelPage({super.key, required this.form});

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
                  context.l10n?.title_kernel ?? 'title_kernel',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              NMIWatchdogSwitch(
                context,
                formControlName: Defaults.nmiWatchdog,
              ),
            ],
          ),
        ),
      );
}
