import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_checkbox_button.dart';
import 'package:mohammed_s_application3/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMeCheckBox = false;

  bool checkmarkCheckBox = false;

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
                                        SizedBox(height: 23.v),
                                        _buildCreateANewAccountRow(context),
                                        SizedBox(height: 11.v),
                                        _buildFullNameColumn(context),
                                        SizedBox(height: 21.v),
                                        _buildEmailColumn(context),
                                        SizedBox(height: 21.v),
                                        _buildPasswordColumn(context),
                                        SizedBox(height: 10.v),
                                        _buildRememberMeCheckBox(context),
                                        SizedBox(height: 32.v),
                                        _buildCheckmarkCheckBox(context),
                                        SizedBox(height: 10.v),
                                        CustomElevatedButton(
                                            text: "SignUp",
                                            margin:
                                                EdgeInsets.only(left: 30.h)),
                                        SizedBox(height: 9.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                                height: 325.v,
                                                width: 287.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse1315x133,
                                                          height: 315.v,
                                                          width: 133.h,
                                                          alignment: Alignment
                                                              .centerLeft),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: GestureDetector(
                                                              onTap: () {
                                                                onTapTxtAlreadyhavean(
                                                                    context);
                                                              },
                                                              child: RichText(
                                                                  text: TextSpan(children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Already have an account? ",
                                                                        style: CustomTextStyles
                                                                            .bodyMediumOnPrimaryContainer),
                                                                    TextSpan(
                                                                        text:
                                                                            "Log",
                                                                        style: CustomTextStyles
                                                                            .titleSmallGray90002),
                                                                    TextSpan(
                                                                        text:
                                                                            "In",
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleSmall)
                                                                  ]),
                                                                  textAlign: TextAlign.left)))
                                                    ])))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildCreateANewAccountRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 8.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Create a ",
                                      style: theme.textTheme.headlineMedium),
                                  TextSpan(
                                      text: "New Account",
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
                                      text: "Sign",
                                      style:
                                          CustomTextStyles.titleSmallGray900),
                                  TextSpan(
                                      text: "Up",
                                      style: theme.textTheme.titleSmall)
                                ]),
                                textAlign: TextAlign.left)
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgObject,
                  height: 64.v,
                  width: 55.h,
                  margin: EdgeInsets.only(left: 1.h))
            ]));
  }

  /// Section Widget
  Widget _buildFullNameColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 30.h),
          child: Text("Full Name", style: theme.textTheme.bodyMedium)),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(left: 30.h),
          child: CustomTextFormField(
              controller: fullNameController,
              hintText: "Enter name",
              alignment: Alignment.centerRight))
    ]);
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
  Widget _buildRememberMeCheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Remember Me",
                value: rememberMeCheckBox,
                onChange: (value) {
                  rememberMeCheckBox = value;
                })));
  }

  /// Section Widget
  Widget _buildCheckmarkCheckBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 2.h),
        child: CustomCheckboxButton(
            text: "I agree with all the Terms of Use and the Privacy Policy",
            value: checkmarkCheckBox,
            onChange: (value) {
              checkmarkCheckBox = value;
            }));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
