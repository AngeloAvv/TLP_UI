import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tlp_ui/blocs/configuration/configuration_bloc.dart';
import 'package:tlp_ui/features/localization/extensions/build_context.dart';
import 'package:tlp_ui/features/routing/app_router.dart';
import 'package:tlp_ui/models/tlp_configuration/tlp_configuration.dart';
import 'package:tlp_ui/widgets/file_card.dart';
import 'package:tlp_ui/widgets/or_separator.dart';
import 'package:yaru/yaru.dart';

/// Enter the Welcome documentation here
@RoutePage()
class WelcomePage extends StatefulWidget implements AutoRouteWrapper {
  /// The constructor of the page.
  const WelcomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<ConfigurationBloc>(
            create: (context) => ConfigurationBloc(
              configurationRepository: context.read(),
            )..fetch(),
          ),
        ],
        child: this,
      );

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String? _selectedPath;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<ConfigurationBloc, ConfigurationState>(
          listener: (context, state) => switch (state) {
            LoadedConfigurationState(:final configuration) =>
              _navigateToMain(context, configuration),
            _ => null,
          },
          buildWhen: (_, state) => switch (state) {
            InitialConfigurationState() ||
            FetchingConfigurationState() ||
            FetchedConfigurationState() =>
              true,
            _ => false,
          },
          builder: (context, state) => Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(64.0),
            child: switch (state) {
              FetchingConfigurationState() => const CircularProgressIndicator(),
              _ => IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          context.l10n?.label_welcome ?? 'label_welcome',
                          style: Theme.of(context).textTheme.displayMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      switch (state) {
                        FetchedConfigurationState(:final files) => Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              YaruSection(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                padding: const EdgeInsets.all(16.0),
                                headline: Text(
                                    context.l10n?.label_select_configuration ??
                                        'label_select_configuration'),
                                child: SizedBox(
                                  height: 500.0,
                                  width: 1000.0,
                                  child: AlignedGridView.extent(
                                    padding: const EdgeInsets.all(16.0),
                                    maxCrossAxisExtent: 200.0,
                                    mainAxisSpacing: 16.0,
                                    crossAxisSpacing: 16.0,
                                    itemBuilder: (context, index) => FileCard(
                                      files[index],
                                      selected: files[index] == _selectedPath,
                                      onTap: () => setState(
                                        () => _selectedPath = files[index],
                                      ),
                                    ),
                                    itemCount: files.length,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: ElevatedButton(
                                  onPressed: _selectedPath?.let((path) => () =>
                                      context
                                          .read<ConfigurationBloc>()
                                          .load(path)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(context
                                            .l10n?.action_open_selected_file ??
                                        'action_open_selected_file'),
                                  ),
                                ),
                              ),
                              const OrSeparator(),
                            ],
                          ),
                        _ => const SizedBox.shrink(),
                      },
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: OutlinedButton(
                          onPressed: () => _pickFile(context),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                context.l10n?.action_open_external_file ??
                                    'action_open_external_file'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            },
          ),
        ),
      );

  void _pickFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['conf'],
    );

    if (result?.paths.isNotEmpty ?? false) {
      final path = result!.paths.first;

      if (!context.mounted) return;
      context.read<ConfigurationBloc>().load(path!);
    }
  }

  void _navigateToMain(BuildContext context, TLPConfiguration configuration) =>
      context.navigateTo(MainRoute(configuration: configuration));
}
