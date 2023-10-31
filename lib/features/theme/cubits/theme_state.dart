part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState({
    @Default(ThemeType.system) ThemeType theme,
  }) = _ThemeState;

  bool get isLight =>
      theme == ThemeType.light ||
      (theme == ThemeType.system &&
          PlatformDispatcher.instance.platformBrightness == Brightness.light);

  bool get isDark =>
      theme == ThemeType.dark ||
      (theme == ThemeType.system &&
          PlatformDispatcher.instance.platformBrightness == Brightness.dark);
}
