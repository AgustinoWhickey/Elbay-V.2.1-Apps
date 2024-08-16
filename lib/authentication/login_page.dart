import 'package:flutter/material.dart';
import 'package:flutter_pos_app/components/login/body_login.dart';
import 'package:flutter_pos_app/components/login/menu_login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 12),
        children: [
          MenuLogin(),
          BodyLogin(),
        ],
      ),
    );
  }

  Widget _registerButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.blueGrey, spreadRadius: 10, blurRadius: 12),
        ],
      ),
      child: Text(
        'Register',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );
  }
}
