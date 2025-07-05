import 'package:flutter/material.dart';
import 'package:tlp_ui/di/dependency_injector.dart';
import 'package:tlp_ui/features/localization/app_localizations.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/features/routing/app_router.dart';
import 'package:tlp_ui/features/theme/models/theme.dart';
import 'package:tlp_ui/features/theme/widgets/theme_selector.dart';
import 'package:yaru/yaru.dart';

class App extends StatelessWidget {
  final _router = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) => DependencyInjector(
        child: YaruTheme(
          data: LightTheme.make,
          builder: (context, yaru, _) =>
              ThemeSelector(builder: (context, mode) {
            return MaterialApp.router(
              onGenerateTitle: (context) => context.l10n?.app_name ?? 'TLP UI',
              debugShowCheckedModeBanner: false,
              routeInformationParser: _router.defaultRouteParser(),
              routerDelegate: _router.delegate(),
              theme: yaru.theme,
              darkTheme: yaru.darkTheme,
              themeMode: mode,
              supportedLocales: AppLocalizations.supportedLocales,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
            );
          }),
        ),
      );
}
