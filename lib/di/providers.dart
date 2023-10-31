part of 'dependency_injector.dart';

final List<SingleChildWidget> _providers = [
  Provider<Talker>(
    create: (_) => Talker(),
  ),
  Provider<ConfigurationService>(
    create: (_) => const ConfigurationServiceImpl(),
  ),
];
