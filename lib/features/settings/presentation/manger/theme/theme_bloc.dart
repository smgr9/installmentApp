import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:first_temp/core/app/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../domain/repositories/theme_repo.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, LoadedThemeState> {
  static ThemeBloc get(context) => BlocProvider.of(context);
  // final String c = S.of(context as BuildContext).dark_Theme;
  ThemeBloc()
      : super(LoadedThemeState(themeData: appThemeData[AppTheme.values[0]])) {
    on<ThemeEvent>((event, emit) async {
      if (event is GetCurrentThemeEvent) {
        final themeIndex = await ThemeCacheHelper().getCachedThemeIndex();
        final theme = AppTheme.values
            .firstWhere((appTheme) => appTheme.index == themeIndex);
        emit(LoadedThemeState(themeData: appThemeData[theme]!));
      } else if (event is ThemeChangedEvent) {
        final themeIndex = event.theme.index;
        await ThemeCacheHelper().cacheThemeIndex(themeIndex);
        emit(LoadedThemeState(themeData: appThemeData[event.theme]!));
      }
    });
  }
}
