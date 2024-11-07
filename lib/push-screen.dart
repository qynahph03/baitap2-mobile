import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  String mess = '';
  Screen2(this.mess);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bạn đã đăng nhập thành công!'),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Quay về')),
              Text('Tên tài khoản đã đăng nhập: $mess'),
            ]
        ),
      ),
    );
  }
}