import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(
                flex: 63,
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
                flex: 36,
              ),
              _buildRoad(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildTwentyFour(context),
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
          CustomImageView(
            imagePath: ImageConstant.imgCitySkylineCi,
            height: 119.v,
            width: 194.h,
            alignment: Alignment.centerLeft,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 119.v,
              width: 194.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCitySkylineCi119x194,
                    height: 119.v,
                    width: 194.h,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup15275,
                    height: 34.v,
                    width: 38.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                      right: 11.h,
                      bottom: 11.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Container(
      height: 5.v,
      width: 350.h,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 12.h,
        bottom: 35.v,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 350.h,
              child: Divider(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 350.h,
              child: Divider(
                color: appTheme.green800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
