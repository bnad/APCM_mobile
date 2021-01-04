import 'package:apcm_mobile/ui/TaskScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SessionScreen extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String campaignName;
  final DateTime startTime;
  final DateTime endTime;
  final String storeName;

  SessionScreen(
      {this.iconData,
      this.color,
      this.campaignName,
      this.startTime,
      this.endTime,
      this.storeName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/task');
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: FaIcon(
                    iconData,
                    color: color,
                    size: 40.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      campaignName,
                      style: TextStyle(fontSize: 20, color: Colors.black),
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
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      storeName,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 40.0,
              indent: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
