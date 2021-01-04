import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:apcm_mobile/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LoginScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg_01.png"), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  'CAPS',
                  style: logoTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: normalTextStyle,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      LineIcons.user,
                      color: secondaryColor,
                    ),
                    hintText: 'Tài khoản',
                    hintStyle: normalTextStyle,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide:
                            BorderSide(color: secondaryColor, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: normalTextStyle,
                  decoration: InputDecoration(
                    hintText: 'Mật khẩu',
                    prefixIcon: Icon(
                      LineIcons.key,
                      color: secondaryColor,
                    ),
                    hintStyle: normalTextStyle,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide:
                            BorderSide(color: secondaryColor, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Checkbox(
                      value: checkBoxValue,
                      activeColor: Colors.white,
                      onChanged: (bool newValue) {
                        setState(() {
                          checkBoxValue = newValue;
                        });
                      }),
                  Text(
                    'Ghi nhớ mật khẩu',
                    style: normalTextStyle,
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        'Quên mật khẩu?',
                        style: normalTextStyle,
                      ))
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(110, 60, 110, 100),
                  child: FlatButton(
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    color: secondaryColor,
                    onPressed: () {
                      Navigator.pushNamed(context, '/main');
                    },
                    child: Text(
                      'ĐĂNG NHẬP',
                      style: buttonTextStyle,
                    ),
                  )),
            ],
          )),
    );
  }
}
