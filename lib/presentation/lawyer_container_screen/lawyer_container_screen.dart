import 'package:flutter/material.dart';
import 'package:syed_s_application4/core/app_export.dart';
import 'package:syed_s_application4/presentation/lawyer_home_page/lawyer_home_page.dart';
import 'package:syed_s_application4/presentation/message_page/message_page.dart';
import 'package:syed_s_application4/presentation/settings_screen/settings_screen.dart';
import 'package:syed_s_application4/presentation/saved_page/saved_page.dart';
import 'package:syed_s_application4/widgets/custom_lawyer_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class LawyerContainerScreen extends StatelessWidget {
  LawyerContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.lawyerHomePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                LawyerCustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.lawyerHome:
        return AppRoutes.lawyerHomePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.settingsScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.lawyerHomePage:
        return LawyerHomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.settingsScreen:
        return SettingsScreen();
      default:
        return DefaultWidget();
    }
  }
}
