import 'package:talker/talker.dart';
import 'package:tlp_ui/models/tlp_configuration/tlp_configuration.dart';
import 'package:tlp_ui/repositories/repository.dart';
import 'package:tlp_ui/services/configuration_service.dart';

/// Abstract class of ConfigurationRepository
abstract class ConfigurationRepository {
  Future<List<String>> get files;

  Future<TLPConfiguration> load(String path);

  Future<TLPConfiguration> save(
    Map<String, String> configuration, {
    required String path,
  });
}

/// Implementation of the base interface ConfigurationRepository
class ConfigurationRepositoryImpl extends Repository
    implements ConfigurationRepository {
  final ConfigurationService configurationService;
  final Talker talker;

  const ConfigurationRepositoryImpl({
    required this.configurationService,
    required this.talker,
  });

  @override
  Future<List<String>> get files => safeCode(() async {
        try {
          talker.info('[$ConfigurationRepository] Loading files...');
          final files = await configurationService.files;
          talker.info('[$ConfigurationRepository] Files loaded successfully');

          return files.map((file) => file.path).toList(growable: false);
        } catch (error, stackTrace) {
          talker.error(
            '[$ConfigurationRepository] Error loading files',
            error,
            stackTrace,
          );

          rethrow;
        }
      });

  @override
  Future<TLPConfiguration> load(String path) => safeCode(() async {
        try {
          talker.info(
              '[$ConfigurationRepository] Loading configuration from $path...');
          final configuration = await configurationService.load(path);
          talker.info(
              '[$ConfigurationRepository] Configuration loaded successfully from $path');

          return configuration;
        } catch (error, stackTrace) {
          talker.error(
            '[$ConfigurationRepository] Error loading configuration from $path',
            error,
            stackTrace,
          );

          rethrow;
        }
      });

  @override
  Future<TLPConfiguration> save(
    Map<String, String> configuration, {
    required String path,
  }) =>
      safeCode(() async {
        try {
          talker.info('[$ConfigurationRepository] Saving configuration...');
          final config = configurationService.save(configuration, path: path);
          talker.info(
              '[$ConfigurationRepository] Configuration saved successfully');

          return config;
        } catch (error, stackTrace) {
          talker.error(
            '[$ConfigurationRepository] Error saving configuration',
            error,
            stackTrace,
          );

          rethrow;
        }
      });
}
