import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_essentials_kit/flutter_essentials_kit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tlp_ui/errors/generic_error.dart';
import 'package:tlp_ui/models/tlp_configuration/tlp_configuration.dart';
import 'package:tlp_ui/repositories/configuration_repository.dart';

part 'configuration_bloc.freezed.dart';

part 'configuration_event.dart';

part 'configuration_state.dart';

/// The ConfigurationBloc
class ConfigurationBloc extends Bloc<ConfigurationEvent, ConfigurationState> {
  final ConfigurationRepository configurationRepository;

  /// Create a new instance of [ConfigurationBloc].
  ConfigurationBloc({
    required this.configurationRepository,
  }) : super(const ConfigurationState.initial()) {
    on<FetchConfigurationEvent>(_onFetch);
    on<LoadConfigurationEvent>(_onLoad);
    on<SaveConfigurationEvent>(_onSave);
  }

  /// Method used to add the [FetchConfigurationEvent] event
  void fetch() => add(const ConfigurationEvent.fetch());

  /// Method used to add the [LoadConfigurationEvent] event
  void load(String path) => add(ConfigurationEvent.load(path));

  /// Method used to add the [SaveConfigurationEvent] event
  void save(
    Map<String, String> configuration, {
    required String path,
  }) =>
      add(ConfigurationEvent.save(configuration, path: path));

  FutureOr<void> _onFetch(
    FetchConfigurationEvent event,
    Emitter<ConfigurationState> emit,
  ) async {
    emit(const ConfigurationState.fetching());

    try {
      final files = await configurationRepository.files;
      emit(files.isEmpty
          ? const ConfigurationState.none()
          : ConfigurationState.fetched(files));
    } on LocalizedError catch (error) {
      emit(ConfigurationState.errorFetching(error));
    } catch (_) {
      emit(ConfigurationState.errorFetching(GenericError()));
    }
  }

  FutureOr<void> _onLoad(
    LoadConfigurationEvent event,
    Emitter<ConfigurationState> emit,
  ) async {
    emit(const ConfigurationState.loading());

    try {
      final configuration = await configurationRepository.load(event.path);
      emit(ConfigurationState.loaded(configuration));
    } on LocalizedError catch (error) {
      emit(ConfigurationState.errorLoading(error));
    } catch (_) {
      emit(ConfigurationState.errorLoading(GenericError()));
    }
  }

  FutureOr<void> _onSave(
    SaveConfigurationEvent event,
    Emitter<ConfigurationState> emit,
  ) async {
    emit(const ConfigurationState.saving());

    try {
      final configuration = await configurationRepository.save(event.configuration, path: event.path);
      emit(ConfigurationState.saved(configuration));
    } on LocalizedError catch (error) {
      emit(ConfigurationState.errorSaving(error));
    } catch (_) {
      emit(ConfigurationState.errorSaving(GenericError()));
    }
  }
}
