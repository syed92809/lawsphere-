import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syed_s_application4/firebase_options.dart';
import 'package:syed_s_application4/theme/theme_helper.dart';
import 'package:syed_s_application4/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: duplicate_import
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'syed_s_application4',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.lawyerContainerScreen,
      routes: AppRoutes.routes,
    );
  }
}
