import 'package:apcm_mobile/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String userName = "Bùi Nguyễn Anh Duy";
  String email = 'anhduynlb@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: secondaryColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Cài đặt',
          style: normalTextStyle,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CircleAvatar(
              radius: 80,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('images/avt.jpg'),
              ),
            ),
          ),
          Text(
            userName,
            style: disableText,
          ),
          Text(
            email,
            style: disableText,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: FlatButton(
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: primaryColor,
              child: SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      LineIcons.user,
                      color: secondaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Cập nhật thông tin',
                      style: normalTextStyle,
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/updateprofile');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: FlatButton(
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: primaryColor,
              child: SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      LineIcons.key,
                      color: secondaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Thay đổi mật khẩu',
                      style: normalTextStyle,
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/changepassword');
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  color: Color(0xFFf6f6f6),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'Sign out',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans',
                        color: Colors.red),
                  ),
                ),
              ),
              // child: GestureDetector(
              //   onTap: () {
              //     Navigator.pushNamed(context, '/');
              //   },
              //   child:
              //       Text(
              //         'Log out',
              //         style: TextStyle(
              //             fontSize: 17,
              //             fontFamily: 'Open Sans',
              //             color: Colors.red),
              //       ),
              //
              // ),
            ),
          ),
          //),
        ],
      ),
    );
  }
}
