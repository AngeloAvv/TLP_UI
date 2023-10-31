import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/storage/widgets/disk_idle_secs_on_ac_field.dart';
import 'package:tlp_ui/pages/storage/widgets/disk_idle_secs_on_bat_field.dart';
import 'package:tlp_ui/pages/storage/widgets/max_lost_work_secs_on_ac_field.dart';
import 'package:tlp_ui/pages/storage/widgets/max_lost_work_secs_on_bat_field.dart';

/// Enter the FileSystem documentation here
@RoutePage()
class FileSystemPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const FileSystemPage({super.key, required this.form});

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
                  AppLocalizations.of(context)?.title_filesystem ??
                      'title_filesystem',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              DiskIdleSecsOnAcField(
                context,
                formControlName: Defaults.diskIdleSecsOnAc,
              ),
              DiskIdleSecsOnBatField(
                context,
                formControlName: Defaults.diskIdleSecsOnBat,
              ),
              MaxLostWorkSecsOnAcField(
                context,
                formControlName: Defaults.maxLostWorkSecsOnAc,
              ),
              MaxLostWorkSecsOnBatField(
                context,
                formControlName: Defaults.maxLostWorkSecsOnBat,
              ),
            ],
          ),
        ),
      );
}
