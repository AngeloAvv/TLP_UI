import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/routing/app_router.dart';

/// Enter the Storage documentation here
@RoutePage()
class StoragePage extends StatelessWidget {
  final FormGroup formDisks;
  final FormGroup formFileSystem;

  /// The constructor of the page.
  const StoragePage({
    super.key,
    required this.formDisks,
    required this.formFileSystem,
  });

  @override
  Widget build(BuildContext context) => AutoTabsRouter.tabBar(
        routes: [
          DiskRoute(form: formDisks),
          FileSystemRoute(form: formFileSystem),
        ],
        builder: (context, child, controller) => Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: TabBar(
              controller: controller,
              tabs: [
                Tab(
                    text: AppLocalizations.of(context)?.title_disks ??
                        'title_disks'),
                Tab(
                    text: AppLocalizations.of(context)?.title_filesystem ??
                        'title_filesystem'),
              ],
            ),
          ),
          body: child,
        ),
      );
}
