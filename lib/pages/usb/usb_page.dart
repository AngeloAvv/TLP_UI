import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:tlp_ui/misc/defaults.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_allowlist_field.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_autosuspend_disable_on_shutdown_switch.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_autosuspend_switch.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_denylist_field.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_exclude_audio_switch.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_exclude_bt_usb_switch.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_exclude_phone_switch.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_exclude_printer_switch.dart';
import 'package:tlp_ui/pages/usb/widgets/usb_exclude_wwan_switch.dart';

/// Enter the USBPage documentation here
@RoutePage()
class USBPage extends StatelessWidget {
  final FormGroup form;

  /// The constructor of the page.
  const USBPage({super.key, required this.form});

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
                  AppLocalizations.of(context)?.title_usb ?? 'title_usb',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              USBAutosuspendSwitch(
                context,
                formControlName: Defaults.usbAutosuspend,
              ),
              USBAllowlistField(
                context,
                formControlName: Defaults.usbAllowlist,
              ),
              USBDenylistField(
                context,
                formControlName: Defaults.usbDenylist,
              ),
              USBExcludeAudioSwitch(
                context,
                formControlName: Defaults.usbExcludeAudio,
              ),
              USBExcludeBTUSBSwitch(
                context,
                formControlName: Defaults.usbExcludeBtusb,
              ),
              USBExcludePhoneSwitch(
                context,
                formControlName: Defaults.usbExcludePhone,
              ),
              USBExcludePrinterSwitch(
                context,
                formControlName: Defaults.usbExcludePrinter,
              ),
              USBExcludeWWANSwitch(
                context,
                formControlName: Defaults.usbExcludeWwan,
              ),
              USBAutosuspendDisableOnShutdownSwitch(
                context,
                formControlName: Defaults.usbAutosuspendDisableOnShutdown,
              ),
            ],
          ),
        ),
      );
}
