import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';

class SplashoneScreen extends StatelessWidget {
  const SplashoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 35.v),
          child: Column(
            children: [
              Spacer(
                flex: 60,
              ),
              SizedBox(
                height: 137.v,
                width: 259.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgB02925ff,
                      height: 137.v,
                      width: 157.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 38.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFee801ff,
                      height: 95.v,
                      width: 259.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 3.v),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 39,
              ),
              _buildRoad(context),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  right: 13.h,
                ),
                child: Container(
                  height: 5.v,
                  width: 350.h,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray900,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                    child: LinearProgressIndicator(
                      value: 0.1,
                      backgroundColor: appTheme.blueGray900,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        appTheme.green800,
                      ),
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

  /// Section Widget
  Widget _buildRoad(BuildContext context) {
    return SizedBox(
      height: 119.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 119.v,
              width: 194.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCitySkylineCi,
                    height: 119.v,
                    width: 194.h,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup15275,
                    height: 34.v,
                    width: 38.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      bottom: 11.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCitySkylineCi119x194,
            height: 119.v,
            width: 194.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
