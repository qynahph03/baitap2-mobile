import 'package:flutter/material.dart';
import 'push-screen.dart';
import 'dart:core';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomepageSate();
  }
}

class HomepageSate extends State<Homepage> {
  String account="";
  String password="";
  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+(.[a-zA-Z]+)?$");
    return emailRegExp.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Trang đăng nhập'),
        ),
        body: Center(
          child: Column(
              children: [
                SizedBox(height: 65),
                TextField(
                    onChanged: (text) {
                      account= text;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nhập tài khoản :')),
                SizedBox(height: 65),
                TextField(
                    obscureText: true,
                    onChanged: (text) {
                      password = text;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nhập mật khẩu :')),
                SizedBox(height: 65),
                ElevatedButton(onPressed: (){
                  if(account.length>6 && password.isNotEmpty && isValidEmail(account)) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(account)));
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('Tài khoản không hợp lệ')));
                    setState(() {});
                  }
                }, child: Text("Đăng nhập")),
              ]
          ),
        ));
  }
}