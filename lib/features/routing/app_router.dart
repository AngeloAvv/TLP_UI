import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Route;
import 'package:tlp_ui/pages/audio/audio_page.dart';
import 'package:tlp_ui/pages/battery/battery_page.dart';
import 'package:tlp_ui/pages/drive/drive_page.dart';
import 'package:tlp_ui/pages/general/general_page.dart';
import 'package:tlp_ui/pages/graphics/graphics_page.dart';
import 'package:tlp_ui/pages/kernel/kernel_page.dart';
import 'package:tlp_ui/pages/main_page.dart';
import 'package:tlp_ui/pages/networking/network_page.dart';
import 'package:tlp_ui/pages/platform/platform_page.dart';
import 'package:tlp_ui/pages/power/power_page.dart';
import 'package:tlp_ui/pages/processor/processor_page.dart';
import 'package:tlp_ui/pages/radio/device_switching_page.dart';
import 'package:tlp_ui/pages/radio/device_wizard_page.dart';
import 'package:tlp_ui/pages/radio/radio_page.dart';
import 'package:tlp_ui/pages/storage/disk_page.dart';
import 'package:tlp_ui/pages/storage/file_system_page.dart';
import 'package:tlp_ui/pages/storage/storage_page.dart';
import 'package:tlp_ui/pages/usb/usb_page.dart';
import 'package:tlp_ui/pages/welcome_page.dart';
import 'package:tlp_ui/models/tlp_configuration/tlp_configuration.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: WelcomeRoute.page),
    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      children: [
        AutoRoute(path: 'general', page: GeneralRoute.page),
        AutoRoute(path: 'audio', page: AudioRoute.page),
        AutoRoute(path: 'battery', page: BatteryRoute.page),
        AutoRoute(path: 'drive', page: DriveRoute.page),
        AutoRoute(path: 'storage', page: StorageRoute.page, children: [
          AutoRoute(path: 'disks', page: DiskRoute.page),
          AutoRoute(path: 'filesystem', page: FileSystemRoute.page),
        ]),
        AutoRoute(path: 'graphics', page: GraphicsRoute.page),
        AutoRoute(path: 'kernel', page: KernelRoute.page),
        AutoRoute(path: 'network', page: NetworkRoute.page),
        AutoRoute(path: 'platform', page: PlatformRoute.page),
        AutoRoute(path: 'processor', page: ProcessorRoute.page),
        AutoRoute(path: 'radio', page: RadioRoute.page, children: [
          AutoRoute(path: 'device_switching', page: DeviceSwitchingRoute.page),
          AutoRoute(path: 'device_wizard', page: DeviceWizardRoute.page),
        ]),
        AutoRoute(path: 'power', page: PowerRoute.page),
        AutoRoute(path: 'usb', page: USBRoute.page),
      ],
    ),
  ];
}
