import 'package:flutter/material.dart';

class BodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In to \rMy Application',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "If you don't have an account",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'You can',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Register Here',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Image.asset(
                'images/illustration-2.png',
                width: 320,
              )
            ],
          ),
        ),
        Image.asset(
          'images/illustration-1.png',
          width: 300,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: Container(
            width: 300,
            child: _formLogin(),
          ),
        ),
      ],
    );
  }

  Widget _formLogin() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Enter email or user name",
            fillColor: Colors.blueGrey[50],
            filled: true,
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            counterText: "Forgot Password",
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
            fillColor: Colors.blueGrey[50],
            filled: true,
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Colors.deepPurple, spreadRadius: 10, blurRadius: 20),
            ],
          ),
          child: ElevatedButton(
            child: Container(
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text('Sign In'),
              ),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Divider(
                height: 50,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            Expanded(
              child: Divider(
                height: 50,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _loginWithButton(image: 'images/google.png'),
            _loginWithButton(image: 'images/facebook.png', isActive: true),
            _loginWithButton(image: 'images/github.png'),
          ],
        )
      ],
    );
  }

  Widget _loginWithButton({required String image, bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 15),
              ],
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
            ),
      child: Center(
        child: Container(
          decoration: isActive
              ? BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 2, blurRadius: 15),
                    ])
              : BoxDecoration(),
          child: Image.asset(
            '$image',
            width: 35,
          ),
        ),
      ),
    );
  }
}
