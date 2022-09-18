
import 'package:flutter/material.dart';
import 'package:flutterfive/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';





class LoginScreen extends StatelessWidget {


  var email =TextEditingController();
  var password =TextEditingController();




  setdata()async{
    SharedPreferences sharelogin = await SharedPreferences.getInstance();
    sharelogin.setString("email", email.text);
    sharelogin.setString("pass", password.text);
    print(sharelogin.getString("email"));
    print(sharelogin.getString("pass"));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login Screen'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: email,
            decoration: InputDecoration(
              labelText: 'email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
              labelText: 'password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setdata();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
