import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_checkbox_button.dart';
import 'package:mohammed_s_application3/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 45.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(right: 29.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgG853,
                                            height: 131.v,
                                            width: 247.h,
                                            margin:
                                                EdgeInsets.only(right: 33.h)),
                                        SizedBox(height: 56.v),
                                        _buildWelcomeBackUserRow(context),
                                        SizedBox(height: 42.v),
                                        _buildEmailColumn(context),
                                        SizedBox(height: 33.v),
                                        _buildPasswordColumn(context),
                                        SizedBox(height: 10.v),
                                        _buildRememberMeRow(context),
                                        SizedBox(height: 42.v),
                                        CustomElevatedButton(
                                            text: "LogIn",
                                            margin:
                                                EdgeInsets.only(left: 30.h)),
                                        SizedBox(height: 9.v),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtDonthaveaaccount(context);
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 53.h),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Don't have a Account Yet? ",
                                                          style: CustomTextStyles
                                                              .bodyMediumOnPrimaryContainer),
                                                      TextSpan(
                                                          text: "Sign",
                                                          style: CustomTextStyles
                                                              .titleSmallGray90002),
                                                      TextSpan(
                                                          text: "Up",
                                                          style: theme.textTheme
                                                              .titleSmall)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.left))),
                                        SizedBox(height: 12.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse1,
                                            height: 315.v,
                                            width: 133.h,
                                            alignment: Alignment.centerLeft)
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildWelcomeBackUserRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 1.v, bottom: 8.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Welcome Back ",
                                      style: theme.textTheme.headlineMedium),
                                  TextSpan(
                                      text: "User!",
                                      style: CustomTextStyles
                                          .headlineMediumPrimary)
                                ]),
                                textAlign: TextAlign.left),
                            SizedBox(height: 6.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Enter Your Details to",
                                      style: CustomTextStyles
                                          .bodyMediumOnPrimaryContainer),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "Log",
                                      style:
                                          CustomTextStyles.titleSmallGray900),
                                  TextSpan(
                                      text: "In",
                                      style: theme.textTheme.titleSmall)
                                ]),
                                textAlign: TextAlign.left)
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgObject,
                  height: 64.v,
                  width: 55.h,
                  margin: EdgeInsets.only(left: 20.h))
            ]));
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 30.h),
          child: Text("Email/User ID", style: theme.textTheme.bodyMedium)),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(left: 30.h),
          child: CustomTextFormField(
              controller: emailController,
              hintText: "Enter email/user id",
              textInputType: TextInputType.emailAddress,
              alignment: Alignment.centerRight))
    ]);
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 30.h),
          child: Text("Password", style: theme.textTheme.bodyMedium)),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(left: 30.h),
          child: CustomTextFormField(
              controller: passwordController,
              hintText: "Enter password",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              alignment: Alignment.centerRight,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 8.h, 13.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 10.v,
                      width: 12.h)),
              suffixConstraints: BoxConstraints(maxHeight: 38.v),
              obscureText: true,
              contentPadding:
                  EdgeInsets.only(left: 13.h, top: 10.v, bottom: 10.v)))
    ]);
  }

  /// Section Widget
  Widget _buildRememberMeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomCheckboxButton(
                  text: "Remember Me",
                  value: rememberMe,
                  onChange: (value) {
                    rememberMe = value;
                  })),
          Text("Forgot Password?", style: theme.textTheme.bodySmall)
        ]));
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtDonthaveaaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
