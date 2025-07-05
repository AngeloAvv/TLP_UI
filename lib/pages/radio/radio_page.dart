import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/features/routing/app_router.dart';

/// Enter the Radio documentation here
@RoutePage()
class RadioPage extends StatelessWidget {
  final FormGroup formSwitchingRoute;
  final FormGroup formWizardRoute;

  /// The constructor of the page.
  const RadioPage({
    super.key,
    required this.formSwitchingRoute,
    required this.formWizardRoute,
  });

  @override
  Widget build(BuildContext context) => AutoTabsRouter.tabBar(
        routes: [
          DeviceSwitchingRoute(form: formSwitchingRoute),
          DeviceWizardRoute(form: formWizardRoute),
        ],
        builder: (context, child, controller) => Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: TabBar(
              controller: controller,
              tabs: [
                Tab(
                    text: context.l10n?.title_device_switching ??
                        'title_device_switching'),
                Tab(
                    text: context.l10n?.title_device_wizard ??
                        'title_device_wizard'),
              ],
            ),
          ),
          body: child,
        ),
      );
}
