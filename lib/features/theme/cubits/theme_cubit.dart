import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tlp_ui/features/theme/models/theme.dart';

part 'theme_cubit.freezed.dart';
part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());

  @override
  ThemeState? fromJson(Map<String, dynamic> json) => ThemeState(
        theme: ThemeType.values.byName(json['theme'] as String),
      );

  @override
  Map<String, dynamic>? toJson(ThemeState state) => {
        'theme': state.theme.name,
      };

  void setTheme(ThemeType? theme) =>
      emit(ThemeState(theme: theme ?? ThemeType.system));
}
