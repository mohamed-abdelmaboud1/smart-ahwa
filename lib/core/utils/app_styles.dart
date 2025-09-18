import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  // ** Base Regular ** //
  static TextStyle _regular({
    Color color = Colors.white,
    required double fontSize,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.normal,
      color: color,
      fontSize: fontSize.sp,
    );
  }

  // ** Base Medium ** //
  static TextStyle _medium({
    Color color = Colors.white,
    required double fontSize,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      color: color,
      fontSize: fontSize.sp,
    );
  }

  // ** Base SemiBold ** //
  static TextStyle _semiBold({
    Color color = Colors.white,
    required double fontSize,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      color: color,
      fontSize: fontSize.sp,
    );
  }

  // ** Base Bold ** //
  static TextStyle _bold({
    Color color = Colors.white,
    required double fontSize,
    String fontFamily = 'Angkor',
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      color: color,
      fontSize: fontSize.sp,
    );
  }

  // ** Base Black ** //
  static TextStyle _black({
    Color color = Colors.white,
    required double fontSize,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w900,
      color: color,
      fontSize: fontSize.sp,
    );
  }

  // ** Regular Usage ** //
  static TextStyle regular9({Color? color}) {
    return _regular(color: color ?? Colors.white, fontSize: 9);
  }

  static TextStyle regular10({Color? color}) {
    return _regular(color: color ?? Colors.white, fontSize: 10);
  }

  static TextStyle regular11({Color? color}) {
    return _regular(color: color ?? Colors.white, fontSize: 11);
  }

  static TextStyle regular12({Color? color}) {
    return _regular(color: color ?? Colors.white, fontSize: 12);
  }

  static TextStyle regular13({Color? color}) {
    return _regular(color: color ?? Colors.white, fontSize: 13);
  }

  static TextStyle regular14({Color? color}) {
    return _regular(color: color ?? Colors.white, fontSize: 14);
  }

  static TextStyle regular15({Color? color}) {
    return _regular(color: color ?? Colors.white, fontSize: 15);
  }

  static TextStyle regular17({Color? color}) {
    return _regular(color: color ?? Colors.white, fontSize: 17);
  }

  // ** Medium Usage ** //
  static TextStyle medium12({Color? color}) {
    return _medium(color: color ?? Colors.white, fontSize: 12);
  }

  static TextStyle medium14({Color? color}) {
    return _medium(color: color ?? Colors.white, fontSize: 14);
  }

  static TextStyle medium16({Color? color}) {
    return _medium(color: color ?? Colors.white, fontSize: 16);
  }

  static TextStyle medium18({Color? color}) {
    return _medium(color: color ?? Colors.white, fontSize: 18);
  }

  static TextStyle medium20({Color? color}) {
    return _medium(color: color ?? Colors.white, fontSize: 20);
  }

  static TextStyle medium24({Color? color}) {
    return _medium(color: color ?? Colors.white, fontSize: 24);
  }

  static TextStyle medium28({Color? color}) {
    return _medium(color: color ?? Colors.white, fontSize: 28);
  }

  // ** SemiBold Usage ** //
  static TextStyle semiBold14({Color? color}) {
    return _semiBold(color: color ?? Colors.white, fontSize: 14);
  }

  static TextStyle semiBold15({Color? color}) {
    return _semiBold(color: color ?? Colors.white, fontSize: 15);
  }

  static TextStyle semiBold16({Color? color}) {
    return _semiBold(color: color ?? Colors.white, fontSize: 16);
  }

  static TextStyle semiBold17({Color? color}) {
    return _semiBold(color: color ?? Colors.white, fontSize: 17);
  }

  static TextStyle semiBold18({Color? color}) {
    return _semiBold(color: color ?? Colors.white, fontSize: 18);
  }

  static TextStyle semiBold20({Color? color}) {
    return _semiBold(color: color ?? Colors.white, fontSize: 20);
  }

  static TextStyle semiBold24({Color? color}) {
    return _semiBold(color: color ?? Colors.white, fontSize: 24);
  }

  // ** Bold Usage ** //
  static TextStyle bold10({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 10);
  }

  static TextStyle bold11({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 11);
  }

  static TextStyle bold12({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 12);
  }

  static TextStyle bold13({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 13);
  }

  static TextStyle bold14({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 14);
  }

  static TextStyle bold15({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 15);
  }

  static TextStyle bold16({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 16);
  }

  static TextStyle bold17({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 17);
  }

  static TextStyle bold18({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 18);
  }

  static TextStyle bold20({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 20);
  }

  static TextStyle bold22({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 22);
  }

  static TextStyle bold24({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 24);
  }

  static TextStyle bold34({Color? color}) {
    return _bold(color: color ?? Colors.white, fontSize: 34);
  }

  // ** Black Usage ** //
  static TextStyle black12({Color? color}) {
    return _black(color: color ?? Colors.white, fontSize: 12);
  }

  static TextStyle black17({Color? color}) {
    return _black(color: color ?? Colors.white, fontSize: 17);
  }

  static TextStyle black18({Color? color}) {
    return _black(color: color ?? Colors.white, fontSize: 18);
  }

  static TextStyle black20({Color? color}) {
    return _black(color: color ?? Colors.white, fontSize: 20);
  }

  static TextStyle black22({Color? color}) {
    return _black(color: color ?? Colors.white, fontSize: 22);
  }

  static TextStyle black24({Color? color}) {
    return _black(color: color ?? Colors.white, fontSize: 24);
  }

  static TextStyle black30({Color? color}) {
    return _black(color: color ?? Colors.white, fontSize: 30);
  }

  static TextStyle black34({Color? color}) {
    return _black(color: color ?? Colors.white, fontSize: 34);
  }
}
