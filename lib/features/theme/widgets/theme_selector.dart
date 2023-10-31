import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tlp_ui/features/theme/cubits/theme_cubit.dart';

typedef ThemeSelectorWidgetBuilder = Widget Function(
    BuildContext context, ThemeMode mode);

class ThemeSelector extends StatelessWidget {
  final ThemeSelectorWidgetBuilder builder;

  const ThemeSelector({required this.builder, super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) => builder(
          context,
          state.isLight
              ? ThemeMode.light
              : state.isDark
                  ? ThemeMode.dark
                  : ThemeMode.system,
        ),
      );
}
