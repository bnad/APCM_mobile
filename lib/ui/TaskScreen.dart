import 'package:apcm_mobile/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  String campaignName = "PEPSI VỊ CHANH KHÔNG CALO";
  DateTime startTime = new DateTime.utc(2020, 12, 30, 8, 00);
  DateTime endTime = new DateTime(2020, 12, 30, 10, 00);
  String storeName = "SEVEN ELEVEN đại học FPT";
  String address =
      "ĐẠI HỌC FPT HCM Q9, Khu Công Nghệ Cao,\n P, Long Thạnh Mỹ, Quận 9, Thành phố Hồ Chí\n Minh";

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
          'Nhiệm vụ',
          style: normalTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,15,0,0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FaIcon(
                    FontAwesomeIcons.calendar,
                    size: 100,
                    color: primaryColor,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      campaignName,
                      style: TextStyle(fontSize: 20, color: primaryColor),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      startTime.hour.toString() +
                          ':00' +
                          ' - ' +
                          endTime.hour.toString() +
                          ':00',
                      style: TextStyle(color: primaryColor),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      storeName,
                      style: TextStyle(color: primaryColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      address,
                      style: TextStyle(color: primaryColor),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
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
                      FaIcon(
                        FontAwesomeIcons.signInAlt,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'check in',
                        style: normalTextStyle,
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  //get Location
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
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
                      FaIcon(
                        FontAwesomeIcons.tasks,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hoạt động',
                        style: normalTextStyle,
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/activity');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
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
                      FaIcon(
                        FontAwesomeIcons.signOutAlt,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Check out',
                        style: normalTextStyle,
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  //get Location
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
