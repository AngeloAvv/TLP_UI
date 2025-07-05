import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/storage/widgets/ahci_runtime_pm_on_ac_field.dart';
import 'package:tlp_ui/pages/storage/widgets/ahci_runtime_pm_on_bat_field.dart';
import 'package:tlp_ui/pages/storage/widgets/ahci_runtime_pm_timeout_field.dart';
import 'package:tlp_ui/pages/storage/widgets/disk_apm_class_denylist_selector.dart';
import 'package:tlp_ui/pages/storage/widgets/disk_devices_field.dart';
import 'package:tlp_ui/pages/storage/widgets/disk_iosched_selector.dart';
import 'package:tlp_ui/pages/storage/widgets/sata_linkpwr_denylist_field.dart';
import 'package:tlp_ui/pages/storage/widgets/sata_linkpwr_on_ac_selector.dart';
import 'package:tlp_ui/pages/storage/widgets/sata_linkpwr_on_bat_selector.dart';

/// Enter the Disk documentation here
@RoutePage()
class DiskPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const DiskPage({super.key, required this.form});

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
                  context.l10n?.title_disks ?? 'title_disks',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              DiskDevicesField(
                context,
                formControlName: Defaults.disksDevices,
              ),
              //TODO: DiskApmLevelOnAc
              //TODO: DiskApmLevelOnBat
              DiskAPMClassDenylistSelector(
                context,
                formControlName: Defaults.diskApmClassDenylist,
              ),
              //TODO: DiskSpindownTimeoutOnAc
              //TODO: DiskSpindownTimeoutOnBat
              DiskIOSchedSelector(
                context,
                formControlName: Defaults.diskIosched,
              ),
              SATALinkpwrOnAcSelector(
                context,
                formControlName: Defaults.sataLinkpwrOnAc,
              ),
              SATALinkpwrOnBatSelector(
                context,
                formControlName: Defaults.sataLinkpwrOnBat,
              ),
              SATALinkpwrDenylistField(
                context,
                formControlName: Defaults.sataLinkpwrDenylist,
              ),
              AHCIRuntimePmOnAcField(
                context,
                formControlName: Defaults.ahciRuntimePmOnAc,
              ),
              AHCIRuntimePmOnBatSelector(
                context,
                formControlName: Defaults.ahciRuntimePmOnBat,
              ),
              AHCIRuntimePmTimeoutField(
                context,
                formControlName: Defaults.ahciRuntimePmTimeout,
              ),
            ],
          ),
        ),
      );
}
