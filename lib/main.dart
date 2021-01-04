import 'package:apcm_mobile/constants.dart';
import 'package:apcm_mobile/ui/ActivityScreen.dart';
import 'package:apcm_mobile/ui/LoginScreen.dart';
import 'package:apcm_mobile/ui/MainScreen.dart';
import 'package:apcm_mobile/ui/SettingScreen.dart';
import 'package:apcm_mobile/ui/TaskScreen.dart';
import 'package:apcm_mobile/ui/UpdateProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:apcm_mobile/ui/ChangePasswordScreen.dart';

void main() => runApp(APCMMobile());

class APCMMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(
                unselectedWidgetColor: secondaryColor
            ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => LoginScreen(),
          '/main': (context) => MainScreen(),
          '/task': (context) => TaskScreen(),
          '/setting': (context) => SettingScreen(),
          '/changepassword': (context) => ChangePasswordScreen(),
          '/updateprofile' : (context) => UpdateProfileScreen(),
          '/activity' : (context) => ActivityScreen(),
        });
  }
}
