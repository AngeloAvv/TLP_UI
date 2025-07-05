part of 'configuration_bloc.dart';

@freezed
sealed class ConfigurationEvent with _$ConfigurationEvent {
  const factory ConfigurationEvent.fetch() = FetchConfigurationEvent;

  const factory ConfigurationEvent.load(String path) = LoadConfigurationEvent;

  const factory ConfigurationEvent.save(
    Map<String, String> configuration, {
    required String path,
  }) = SaveConfigurationEvent;
}
