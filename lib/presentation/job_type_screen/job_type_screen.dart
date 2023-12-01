import 'package:flutter/material.dart';
import 'package:syed_s_application4/core/app_export.dart';
import 'package:syed_s_application4/widgets/custom_elevated_button.dart';
import 'package:syed_s_application4/widgets/custom_icon_button.dart';

class JobTypeScreen extends StatelessWidget {
  const JobTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: appTheme.whiteA70001,
      body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 24, top: 13, right: 24, bottom: 13),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomImageView(
                svgPath: ImageConstant.imgGroup162799,
                height: getSize(24),
                width: getSize(24),
                alignment: Alignment.centerLeft,
                onTap: () {
                  onTapImgImage(context);
                }),
            Padding(
                padding: getPadding(top: 47),
                child: Text("Choose Account Type",
                    style: theme.textTheme.headlineSmall)),
            Container(
                width: getHorizontalSize(209),
                margin: getMargin(top: 7),
                child: Text(
                    "Are you looking for a lawyer or\nwants to get hired as a lawyer",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallBluegray400_1
                        .copyWith(height: 1.57))),
            Padding(
                padding: getPadding(top: 38, bottom: 5),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            // save the id for selected option and move to next screen
                            onTapFindLawyer(context);
                          },
                          child: Container(
                              margin: getMargin(right: 7),
                              padding: getPadding(
                                  left: 18, top: 24, right: 18, bottom: 24),
                              decoration: AppDecoration.outlineIndigo.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: getSize(64),
                                        width: getSize(64),
                                        padding: getPadding(all: 16),
                                        decoration:
                                            IconButtonStyleHelper.fillPrimary,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgWork)),
                                    Padding(
                                        padding: getPadding(top: 29),
                                        child: Text("Looking for Lawyer",
                                            style:
                                                theme.textTheme.titleMedium)),
                                    Container(
                                        width: getHorizontalSize(120),
                                        margin: getMargin(top: 9),
                                        child: Text(
                                            "It’s easy to find your lawyer here with AI Assistant.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.labelLarge!
                                                .copyWith(height: 1.67)))
                                  ])))),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            // save the id for selected option and move to next screen
                            onTapImLawyer(context);
                          },
                          child: Container(
                              margin: getMargin(left: 7),
                              padding: getPadding(
                                  left: 14, top: 24, right: 14, bottom: 24),
                              decoration: AppDecoration.outlineOnPrimary
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: getSize(64),
                                        width: getSize(64),
                                        padding: getPadding(all: 16),
                                        decoration:
                                            IconButtonStyleHelper.fillOrange,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgProfile)),
                                    Padding(
                                        padding: getPadding(top: 29),
                                        child: Text("I'm a Lawyer",
                                            style:
                                                theme.textTheme.titleMedium)),
                                    Container(
                                        width: getHorizontalSize(109),
                                        margin: getMargin(top: 9),
                                        child: Text(
                                            "Empower Your Legal Career: Find Clients, Make a Difference.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.labelLarge!
                                                .copyWith(height: 1.67)))
                                  ]))))
                ]))
          ])),
    ));
  }

  /// Navigates to the speciallizationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  onTapImLawyer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lawyerRegScreen);
  }

  onTapFindLawyer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpCompleteAccountScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgImage(BuildContext context) {
    Navigator.pop(context);
  }
}
