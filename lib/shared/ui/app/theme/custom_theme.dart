import 'package:pokedex/shared/ui/app/custom_system_ui_overlay.dart';
import 'package:pokedex/shared/ui/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/shared/util/constants/ds_font_size.dart';

abstract class CustomTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.primary),
    scaffoldBackgroundColor: AppColors.white,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: DSFontSize.body,
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      bodyMedium: TextStyle(
        fontSize: 15.0,
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      titleSmall: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      displayLarge: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      displayMedium: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      displaySmall: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      headlineMedium: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      headlineSmall: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
      bodySmall: TextStyle(
        color: AppColors.black,
        fontFamily: 'Varela Round',
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      systemOverlayStyle: CustomSystemUIOverlay.getCustomSystemUIOverlay(),
      iconTheme: IconThemeData(
        color: AppColors.primary,
      ),
      titleTextStyle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        fontFamily: 'Varela Round',
        color: Color(0xFF0A0807),
      ),
      toolbarTextStyle: const TextStyle(
        color: Color(0xFF212325),
      ),
      backgroundColor: AppColors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.black),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary),
      ),
      labelStyle: TextStyle(
        fontFamily: 'Varela Round',
        color: AppColors.black,
        fontSize: 18.0,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            fontFamily: 'Varela Round',
            fontWeight: FontWeight.w600,
            letterSpacing: .8,
          ),
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (!states.contains(WidgetState.disabled)) {
              return AppColors.primary;
            } else if (states.contains(WidgetState.disabled)) {
              return AppColors.black;
            } else {
              return AppColors.black;
            }
          },
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
          TextStyle(
            fontFamily: 'Varela Round',
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            letterSpacing: .8,
          ),
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (!states.contains(WidgetState.disabled)) {
              return AppColors.primary;
            } else if (states.contains(WidgetState.disabled)) {
              return Colors.grey;
            } else {
              return AppColors.primary;
            }
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (!states.contains(WidgetState.disabled)) {
              return AppColors.white;
            } else if (states.contains(WidgetState.disabled)) {
              return AppColors.white;
            } else {
              return AppColors.white;
            }
          },
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.black,
      foregroundColor: AppColors.primary,
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: AppColors.primary),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(AppColors.primary),
      checkColor: WidgetStateProperty.all(AppColors.white),
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: DSFontSize.body,
        color: AppColors.black,
      ),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: DSFontSize.body,
        color: Colors.grey,
      ),
      labelColor: AppColors.black,
      indicator: BoxDecoration(
        color: AppColors.primary,
        // borderRadius: BorderRadius.circular(30.0),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(AppColors.primary),
      overlayColor: WidgetStateProperty.all(AppColors.secondary),
      splashRadius: 14.0,
    ),
    sliderTheme: SliderThemeData(
      trackHeight: 4.0,
      minThumbSeparation: 2,
      thumbColor: AppColors.primary,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
      activeTrackColor: AppColors.primary,
      overlayColor: AppColors.primary.withOpacity(.2),
      inactiveTickMarkColor: AppColors.primary,
      inactiveTrackColor: AppColors.primary.withOpacity(.18),
      showValueIndicator: ShowValueIndicator.always,
      valueIndicatorColor: AppColors.primary,
    ),
  );

  static ThemeData appDarkTheme = ThemeData(
    primaryColor: AppColors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.secondary),
    scaffoldBackgroundColor: AppColors.black,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.black,
      ),
      bodyMedium: TextStyle(
        color: AppColors.black,
      ),
      displayLarge: TextStyle(
        color: AppColors.black,
      ),
      displayMedium: TextStyle(
        color: AppColors.black,
      ),
      displaySmall: TextStyle(
        color: AppColors.black,
      ),
      headlineMedium: TextStyle(
        color: AppColors.black,
      ),
      headlineSmall: TextStyle(
        color: AppColors.black,
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
      ),
      bodySmall: TextStyle(
        color: AppColors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.black,
      ),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),
      backgroundColor: AppColors.primary,
    ),
  );
}
