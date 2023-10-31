part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [
  RepositoryProvider<ConfigurationRepository>(
    create: (context) => ConfigurationRepositoryImpl(
      configurationService: context.read(),
      talker: context.read(),
    ),
  ),
];
