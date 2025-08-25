import 'package:yaru/yaru.dart';

class LightTheme {
  static YaruThemeData get make => const YaruThemeData(
        variant: YaruVariant.blue,
      );
}

enum ThemeType {
  system,
  light,
  dark,
}
