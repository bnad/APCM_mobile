import 'package:apcm_mobile/constants.dart';
import 'package:apcm_mobile/model/Session.dart';
import 'package:apcm_mobile/ui/SessionScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DatePickerController _controller = DatePickerController();
  DateTime _selectedDate = DateTime.now();
  String campaignName = "PEPSI VỊ CHANH KHÔNG CALO";
  DateTime startTime = new DateTime.utc(2020, 12, 30, 8, 00);
  DateTime endTime = new DateTime(2020, 12, 30, 10, 00);
  String storeName = "SEVEN ELEVEN đại học FPT";

  @override
  Widget build(BuildContext context) {
    Session session;
    return  Container(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: DatePicker(
                    DateTime.now(),
                    width: 70,
                    height: 90,
                    controller: _controller,
                    initialSelectedDate: DateTime.now(),
                    selectionColor: primaryColor,
                    selectedTextColor: secondaryColor,
                    daysCount: 7,
                    monthTextStyle: dateTextStyle,
                    dayTextStyle: dateTextStyle,
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedDate = date;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),

                SessionScreen(iconData: LineIcons.times_circle,color: cancelColor, campaignName: campaignName,
                endTime: endTime, startTime: startTime, storeName: storeName,),

                SessionScreen(iconData: LineIcons.check_circle,color: acceptColor, campaignName: campaignName,
                  endTime: endTime, startTime: startTime, storeName: storeName,),

                SessionScreen(iconData: LineIcons.circle,color: waitingColor, campaignName: campaignName,
                  endTime: endTime, startTime: startTime, storeName: storeName,),

                SessionScreen(iconData: LineIcons.circle,color: waitingColor, campaignName: campaignName,
                  endTime: endTime, startTime: startTime, storeName: storeName,),
              ],
            ),
          ),
        );
  }
}
