import 'package:apcm_mobile/constants.dart';
import 'package:apcm_mobile/ui/AccountScreen.dart';
import 'package:apcm_mobile/ui/CalendarScreen.dart';
import 'package:apcm_mobile/ui/SettingScreen.dart';
import 'package:apcm_mobile/ui/TaskScreen.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'HomeScreen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;
  String _title = 'Trang chủ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          title: Text(
            _title,
            style: normalTextStyle,
          )),
      body: IndexedStack(
        children: [
          CalendarScreen(),
          HomeScreen(),
          AccountScreen()
        ],
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: boldTextStyle,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(LineIcons.calendar),
            label: 'Lịch',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.user),
            label: 'Tài khoản',
          ),
          //BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Cài đặt'),
        ],
        selectedItemColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: disableColor,
        currentIndex: _selectedIndex,
        iconSize: 35.0,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if (_selectedIndex == 0) {
              _title = 'Lịch';
            } else if (_selectedIndex == 1) {
              _title = 'Trang chủ';
            } else  {
              _title = 'Tài khoản';
            }
            // else {
            //   _title = 'Cài đặt';
            // }
          });
        },
      ),
    );
  }
}
