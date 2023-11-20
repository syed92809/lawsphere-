import 'package:flutter/material.dart';
import 'package:syed_s_application4/core/app_export.dart';
import 'package:syed_s_application4/widgets/custom_elevated_button.dart';
import 'package:syed_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpCompleteAccountScreen extends StatelessWidget {
  SignUpCompleteAccountScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 5, right: 24, bottom: 13),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup162799,
                              height: getSize(24),
                              width: getSize(24),
                              onTap: () {
                                onTapImgImage(context);
                              }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 20, right: 85),
                                  child: Text("Complete your account",
                                      style: theme.textTheme.headlineSmall))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 9),
                                  child: Text("Create Your Free Account",
                                      style: CustomTextStyles
                                          .titleSmallBluegray400_1))),
                          Padding(
                              padding: getPadding(top: 33),
                              child: Text("First Name",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: firstNameController,
                              margin: getMargin(top: 9),
                              hintText: "Enter your first name",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              contentPadding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("Last Name",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: lastNameController,
                              margin: getMargin(top: 9),
                              hintText: "Enter your last name",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              contentPadding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("Password",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(top: 9),
                              hintText: "Create a password",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 14, right: 16, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(52)),
                              obscureText: true,
                              contentPadding:
                                  getPadding(left: 16, top: 15, bottom: 15)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("Your Country",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: countryController,
                              margin: getMargin(top: 9),
                              hintText: "Enter your country",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              contentPadding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("Your City",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: cityController,
                              margin: getMargin(top: 9),
                              hintText: "Enter your city",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
                              contentPadding: getPadding(
                                  left: 12, top: 15, right: 12, bottom: 15)),
                          CustomElevatedButton(
                              text: "Create Account",
                              margin: getMargin(top: 40),
                              buttonStyle: CustomButtonStyles.fillPrimary),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 40, top: 28, right: 40),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Already have an account?",
                                            style: CustomTextStyles
                                                .titleMediumBluegray300),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLargelabelmediu(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(left: 3),
                                                child: Text(" Login",
                                                    style: theme.textTheme
                                                        .titleMedium)))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(245),
                                  margin: getMargin(
                                      left: 40, top: 19, right: 40, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "By signing up you agree to our ",
                                            style: CustomTextStyles
                                                .titleSmallBluegray400SemiBold),
                                        TextSpan(
                                            text: "Terms",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainer),
                                        TextSpan(
                                            text: " and ",
                                            style: CustomTextStyles
                                                .titleSmallBluegray400SemiBold),
                                        TextSpan(
                                            text: "Conditions of Use",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainer)
                                      ]),
                                      textAlign: TextAlign.center)))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgImage(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapTxtLargelabelmediu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
