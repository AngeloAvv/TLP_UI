part of 'configuration_bloc.dart';

@freezed
sealed class ConfigurationState with _$ConfigurationState {
  const factory ConfigurationState.initial() = InitialConfigurationState;

  const factory ConfigurationState.fetching() = FetchingConfigurationState;

  const factory ConfigurationState.fetched(List<String> files) =
      FetchedConfigurationState;

  const factory ConfigurationState.none() = NoConfigurationState;

  const factory ConfigurationState.errorFetching(LocalizedError error) =
      ErrorFetchingConfigurationState;

  const factory ConfigurationState.loading() = LoadingConfigurationState;

  const factory ConfigurationState.loaded(TLPConfiguration configuration) =
      LoadedConfigurationState;

  const factory ConfigurationState.errorLoading(LocalizedError error) =
      ErrorLoadingConfigurationState;

  const factory ConfigurationState.saving() = SavingConfigurationState;

  const factory ConfigurationState.saved(TLPConfiguration configuration) =
      SavedConfigurationState;

  const factory ConfigurationState.errorSaving(LocalizedError error) =
      ErrorSavingConfigurationState;
}
