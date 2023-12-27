import 'package:flutter/material.dart';
import 'package:syed_s_application4/core/app_export.dart';
import 'package:syed_s_application4/widgets/custom_elevated_button.dart';
import 'package:syed_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LawyerRegScreen extends StatelessWidget {
  LawyerRegScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

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
                                  child: Text("Create Account as Lawyer",
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
                              child: Text("Phone",
                                  style: theme.textTheme.titleSmall)),
                          CustomTextFormField(
                              controller: phoneController,
                              margin: getMargin(top: 9),
                              hintText: "Enter phone number",
                              hintStyle:
                                  CustomTextStyles.titleMediumBluegray400,
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
                              onTap: () {
                                onTapContinueLawyer(context);
                              },
                              text: "Continue",
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

  onTapContinueLawyer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.speciallizationScreen);
  }
}
