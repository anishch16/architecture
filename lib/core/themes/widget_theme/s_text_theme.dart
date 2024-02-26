import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class STextTheme {
  STextTheme._();

  static TextTheme baseDark = ThemeData.dark().textTheme;
  static TextTheme baseLight = ThemeData.light().textTheme;

  static TextTheme darkTextTheme = ThemeData.dark()
      .textTheme
      .copyWith(
        displayLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        displayMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        displaySmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        headlineLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        headlineMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        headlineSmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        titleLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        titleMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        titleSmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        bodyLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        bodyMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        bodySmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        labelLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        labelMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 10.sp,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        labelSmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
      )
      .apply(
        fontFamily: 'SF',
        bodyColor: Colors.white70,
      );

  static TextTheme lightTextTheme = ThemeData.light()
      .textTheme
      .copyWith(
        displayLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        displayMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        displaySmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        headlineLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        headlineMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        headlineSmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        titleLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        titleMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          letterSpacing: 0.72,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        bodyLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
        bodyMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        bodySmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        labelLarge: TextStyle(
          letterSpacing: 0.72,
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
        ),
        labelMedium: TextStyle(
          letterSpacing: 0.72,
          fontSize: 10.sp,
          fontWeight: FontWeight.w600,
          overflow: TextOverflow.ellipsis,
        ),
        labelSmall: TextStyle(
          letterSpacing: 0.72,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis,
        ),
      )
      .apply(
        fontFamily: 'SF',
        bodyColor: Color(0xFF344054),
        displayColor: Color(0xFF344054),
      );
}
