import 'package:flutter/material.dart';
import 'package:syed_s_application4/core/app_export.dart';
import 'package:syed_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:syed_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:syed_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:syed_s_application4/presentation/logout_popup_dialog/logout_popup_dialog.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: appTheme.whiteA70001,
      appBar: CustomAppBar(
          height: getVerticalSize(51),
          leadingWidth: getHorizontalSize(48),
          leading: AppbarImage(
              svgPath: ImageConstant.imgGroup162799,
              margin: getMargin(left: 24, top: 13, bottom: 14),
              onTap: () {
                onTapArrowbackone(context);
              }),
          centerTitle: true,
          title: AppbarTitle(text: "Account")),
      body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
              padding: getPadding(top: 28),
              child: Padding(
                  padding: getPadding(left: 24, right: 24, bottom: 5),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(top: 32),
                            child: Text("Account",
                                style: CustomTextStyles.labelLargeSemiBold))),
                    GestureDetector(
                        onTap: () {
                          onTapAccount(context);
                        },
                        child: Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgPerson,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(top: 3)),
                                  Padding(
                                      padding: getPadding(left: 12, top: 5),
                                      child: Text("Personal Info",
                                          style: theme.textTheme.titleMedium)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightPrimary,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(bottom: 3))
                                ]))),
                    Padding(
                        padding: getPadding(top: 14),
                        child: Divider(indent: getHorizontalSize(36))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(top: 26),
                            child: Text("General",
                                style: CustomTextStyles.labelLargeSemiBold))),
                    GestureDetector(
                        onTap: () {
                          onTapNotification(context);
                        },
                        child: Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgBell,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(top: 2)),
                                  Padding(
                                      padding: getPadding(left: 12, top: 2),
                                      child: Text("Notification",
                                          style: CustomTextStyles
                                              .titleMediumPoppins)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightPrimary,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(bottom: 2))
                                ]))),
                    Padding(
                        padding: getPadding(top: 16),
                        child: Divider(indent: getHorizontalSize(36))),
                    GestureDetector(
                        onTap: () {
                          onTapLanguage(context);
                        },
                        child: Padding(
                            padding: getPadding(top: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgGlobe,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(top: 2)),
                                  Padding(
                                      padding: getPadding(left: 12, top: 7),
                                      child: Text("Language",
                                          style: theme.textTheme.titleMedium)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightPrimary,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(bottom: 4))
                                ]))),
                    Padding(
                        padding: getPadding(top: 14),
                        child: Divider(indent: getHorizontalSize(36))),
                    Padding(
                        padding: getPadding(top: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgShielddone,
                                  height: getSize(24),
                                  width: getSize(24)),
                              Padding(
                                  padding: getPadding(left: 12, top: 4),
                                  child: Text("Security",
                                      style: theme.textTheme.titleMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowrightPrimary,
                                  height: getSize(24),
                                  width: getSize(24))
                            ])),
                    Padding(
                        padding: getPadding(top: 14),
                        child: Divider(indent: getHorizontalSize(36))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(top: 26),
                            child: Text("About",
                                style: CustomTextStyles.labelLargeSemiBold))),
                    GestureDetector(
                        onTap: () {
                          onTapLegalandpolicie(context);
                        },
                        child: Padding(
                            padding: getPadding(top: 16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgShield,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Padding(
                                      padding: getPadding(left: 12, top: 4),
                                      child: Text("Legal and Policies",
                                          style: theme.textTheme.titleMedium)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightPrimary,
                                      height: getSize(24),
                                      width: getSize(24))
                                ]))),
                    Padding(
                        padding: getPadding(top: 15),
                        child: Divider(indent: getHorizontalSize(36))),
                    Padding(
                        padding: getPadding(top: 16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgQuestionPrimary,
                                  height: getSize(24),
                                  width: getSize(24)),
                              Padding(
                                  padding: getPadding(left: 12, top: 4),
                                  child: Text("Help & Feedback",
                                      style: theme.textTheme.titleMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowrightPrimary,
                                  height: getSize(24),
                                  width: getSize(24))
                            ])),
                    Padding(
                        padding: getPadding(top: 17),
                        child: Divider(indent: getHorizontalSize(36))),
                    Padding(
                        padding: getPadding(top: 16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgAlert,
                                  height: getSize(24),
                                  width: getSize(24)),
                              Padding(
                                  padding: getPadding(left: 12, top: 2),
                                  child: Text("About Us",
                                      style: theme.textTheme.titleMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowrightPrimary,
                                  height: getSize(24),
                                  width: getSize(24))
                            ])),
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                            onTap: () {
                              onTapTxtLargelabelmediu(context);
                            },
                            child: Padding(
                                padding: getPadding(top: 28),
                                child: Text("Logout",
                                    style:
                                        CustomTextStyles.titleMediumRedA200))))
                  ])))),
    ));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowbackone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the personalInfoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the personalInfoScreen.
  onTapAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalInfoScreen);
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationsScreen.
  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }

  /// Navigates to the languageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the languageScreen.
  onTapLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.languageScreen);
  }

  /// Navigates to the privacyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the privacyScreen.
  onTapLegalandpolicie(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacyScreen);
  }

  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  onTapTxtLargelabelmediu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
