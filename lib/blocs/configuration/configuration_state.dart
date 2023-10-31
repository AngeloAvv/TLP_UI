part of 'configuration_bloc.dart';

@freezed
class ConfigurationState with _$ConfigurationState {
  const factory ConfigurationState.initial() = _InitialConfigurationState;

  const factory ConfigurationState.fetching() = _FetchingConfigurationState;

  const factory ConfigurationState.fetched(List<String> files) =
      _FetchedConfigurationState;

  const factory ConfigurationState.none() = _NoConfigurationState;

  const factory ConfigurationState.errorFetching(LocalizedError error) =
      _ErrorFetchingConfigurationState;

  const factory ConfigurationState.loading() = _LoadingConfigurationState;

  const factory ConfigurationState.loaded(TLPConfiguration configuration) =
      _LoadedConfigurationState;

  const factory ConfigurationState.errorLoading(LocalizedError error) =
      _ErrorLoadingConfigurationState;

  const factory ConfigurationState.saving() = _SavingConfigurationState;

  const factory ConfigurationState.saved(TLPConfiguration configuration) =
      _SavedConfigurationState;

  const factory ConfigurationState.errorSaving(LocalizedError error) =
      _ErrorSavingConfigurationState;
}
