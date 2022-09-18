import 'package:flutter/material.dart';
import 'package:flutterfive/screens/home_screen.dart';
import 'package:flutterfive/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ControlScreen extends StatefulWidget {


  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  String? email;

  getdata()async {
    SharedPreferences getdata = await SharedPreferences.getInstance();
    setState(() {

      email=getdata.getString("email");
    });
  }

  @override
  void initState() {
    getdata();

  }



  @override
  Widget build(BuildContext context) {
    return email==null?LoginScreen():HomeScreen();
  }
}
