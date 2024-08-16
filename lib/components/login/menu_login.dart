import 'package:flutter/material.dart';

class MenuLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [Text('')],
          ),
          Row(
            children: [
              _menuItem(title: 'Sign In', isActive: true),
              _registerButton()
            ],
          )
        ],
      ),
    );
  }

  Widget _menuItem({required String title, bool isActive = false}) {
    return Padding(
      padding: EdgeInsets.only(right: 75),
      child: Column(
        children: [
          Text(
            '$title',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey),
          ),
          const SizedBox(
            height: 6,
          ),
          isActive
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                )
              : SizedBox(),
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
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }
}
