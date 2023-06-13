import 'package:faheem_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UpdateAvailableBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: getHorizontalSize(
            428,
          ),
          padding: getPadding(
            left: 198,
            top: 16,
            right: 198,
            bottom: 16,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL28,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  4,
                ),
                width: getHorizontalSize(
                  32,
                ),
                margin: getMargin(
                  bottom: 444,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.cyanA4007e,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
