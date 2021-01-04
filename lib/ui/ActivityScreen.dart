import 'package:apcm_mobile/constants.dart';
import 'package:flutter/material.dart';


class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}
class _ActivityScreenState extends State<ActivityScreen> {
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
          'Hoạt động',
          style: normalTextStyle,
        ),
      ),
    );
  }

}