import 'package:flutter/material.dart';
import 'package:news_clone/constants/math_utils.dart';
import 'package:news_clone/constants/color_constants.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack90033 => BoxDecoration(
        color: ColorConstants.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.black90033,
            spreadRadius: getHorizontalSize(2.00),
            blurRadius: getHorizontalSize(2.00),
            offset: const Offset(0, 0),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003312 => BoxDecoration(
        color: ColorConstants.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.black90033,
            spreadRadius: getHorizontalSize(2.00),
            blurRadius: getHorizontalSize(2.00),
            offset: const Offset(0, 1),
          ),
        ],
      );
  static BoxDecoration get outlinePinkA200 => BoxDecoration(
        color: ColorConstants.whiteA700,
        border: Border.all(
          color: ColorConstants.pinkA200,
          width: getHorizontalSize(1.00),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstants.whiteA700,
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: ColorConstants.whiteA700,
        border: Border.all(
          color: ColorConstants.gray200,
          width: getHorizontalSize(1.00),
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: ColorConstants.whiteA700,
        border: Border.all(
          color: ColorConstants.gray300,
          width: getHorizontalSize(1.00),
        ),
      );
  static BoxDecoration get gradientWhiteA70000WhiteA700 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, -3.0616171314629196e-17),
          end: const Alignment(0.5, 0.9999999999999999),
          colors: [
            ColorConstants.whiteA70000,
            ColorConstants.whiteA700,
          ],
        ),
      );
  static BoxDecoration get fillPinkA200 => BoxDecoration(
        color: ColorConstants.pinkA200,
      );
  static BoxDecoration get txtFillPinkA200 => BoxDecoration(
        color: ColorConstants.pinkA200,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: ColorConstants.gray300,
      );
  static BoxDecoration get txtFillGray100 => BoxDecoration(
        color: ColorConstants.gray100,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstants.gray100,
      );
  static BoxDecoration get txtFillGray300 => BoxDecoration(
        color: ColorConstants.gray300,
      );
  static BoxDecoration get outlineBlack90019 => BoxDecoration(
        color: ColorConstants.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.black90019,
            spreadRadius: getHorizontalSize(2.00),
            blurRadius: getHorizontalSize(2.00),
            offset: const Offset(0, 0),
          ),
        ],
      );
  static BoxDecoration get outlineGray20012 => BoxDecoration(
        color: ColorConstants.gray100,
        border: Border.all(
          color: ColorConstants.gray200,
          width: getHorizontalSize(1.00),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder15 = BorderRadius.circular(
    getHorizontalSize(15.00),
  );

  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(20.00),
    ),
    topRight: Radius.circular(
      getHorizontalSize(20.00),
    ),
  );

  static BorderRadius customBorderTL40 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(40.00),
    ),
    topRight: Radius.circular(
      getHorizontalSize(40.00),
    ),
  );

  static BorderRadius customBorderLR10 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(10.00),
    ),
  );

  static BorderRadius circleBorder30 = BorderRadius.circular(
    getHorizontalSize(30.00),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(10.00),
  );

  static BorderRadius roundedBorder2 = BorderRadius.circular(
    getHorizontalSize(2.00),
  );

  static BorderRadius customBorderTL10 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(10.00),
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(5.00),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(20.00),
  );

  static BorderRadius circleBorder7 = BorderRadius.circular(
    getHorizontalSize(7.00),
  );

  static BorderRadius customBorderTL1012 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(10.00),
    ),
    topRight: Radius.circular(
      getHorizontalSize(10.00),
    ),
  );
}
