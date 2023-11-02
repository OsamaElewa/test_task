import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static const textStyleWelcomeTitle = TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      height: 0,
  );

  static const textStyleOrderText = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'Inter',
    height: 0,
  );

  static const textStyleDefinationText = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static const textStyleDeclarationText = TextStyle(
    color: Colors.grey,
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const textStyleBold = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const textStyleButtonText = TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0,
  );

  static const textStyleThanksDetails = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static const textStyleThanksTitle = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w400,
  height: 0,
  );
}
