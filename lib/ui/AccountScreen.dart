import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {

  @override
  _AccountScreenState createState() => _AccountScreenState();

}
class _AccountScreenState extends State<AccountScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Text('Setting'),
        onPressed: () {
          Navigator.pushNamed(context, '/setting');
        },
      ),
    );
  }

}