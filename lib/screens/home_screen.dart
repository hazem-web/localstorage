
import 'package:flutter/material.dart';
import 'package:flutterfive/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "home screen".toString(),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width:200,
              height: 50,
              child: ElevatedButton(onPressed: ()async {
                SharedPreferences getdata = await SharedPreferences.getInstance();
                getdata.remove("email");
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));

              }, child: Text("logout")),
            )
          ],
        ),
      ),
    );
  }
}
