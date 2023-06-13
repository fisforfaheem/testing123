import 'package:flutter/material.dart';
import 'package:faheem_s_application/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillTeal100 => BoxDecoration(
        color: ColorConstant.teal100,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );
  static BoxDecoration get fillWhiteA700a5 => BoxDecoration(
        color: ColorConstant.whiteA700A5,
      );
  static BoxDecoration get fillWhiteA700cc => BoxDecoration(
        color: ColorConstant.whiteA700Cc,
      );
  static BoxDecoration get outline => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.21,
            0.09,
          ),
          end: Alignment(
            0.81,
            0.9,
          ),
          colors: [
            ColorConstant.gray50,
            ColorConstant.gray20000,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineBlack9004c => BoxDecoration(
        color: ColorConstant.redA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray50001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray50001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get gradientCyanA400GreenA2001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0,
          ),
          end: Alignment(
            0.96,
            1,
          ),
          colors: [
            ColorConstant.cyanA400,
            ColorConstant.greenA200,
          ],
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: ColorConstant.gray900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientCyanA400GreenA200 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.02,
            -0.01,
          ),
          end: Alignment(
            0.96,
            1,
          ),
          colors: [
            ColorConstant.cyanA400,
            ColorConstant.greenA200,
          ],
        ),
      );
  static BoxDecoration get fillCyanA400 => BoxDecoration(
        color: ColorConstant.cyanA400,
      );
  static BoxDecoration get outlineYellow70051 => BoxDecoration(
        color: ColorConstant.yellow700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.yellow70051,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientBlack90000Black90001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.black90000,
            ColorConstant.black90001,
          ],
        ),
      );
  static BoxDecoration get outlineBlack90019 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius customBorderTL40 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius roundedBorder45 = BorderRadius.circular(
    getHorizontalSize(
      45,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder35 = BorderRadius.circular(
    getHorizontalSize(
      35,
    ),
  );

  static BorderRadius circleBorder19 = BorderRadius.circular(
    getHorizontalSize(
      19,
    ),
  );

  static BorderRadius customBorderTL28 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
  );

  static BorderRadius circleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
