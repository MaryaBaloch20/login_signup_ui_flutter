import 'package:flutter/material.dart';
import 'package:login_drawer_signup_ui_flutter/pages/homepage.dart';
import 'package:login_drawer_signup_ui_flutter/pages/input_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 10.0),
            child: Image.asset(
              "images/login.jpg",
              fit: BoxFit.cover,
            ),

            // height: 500.0,
          ),
          const Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                //fontFamily: 'StartNow',
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const MyInputField(
              placeholder: "Enter Username",
              label: "Username",
              isPassField: false),
          const MyInputField(
            placeholder: "Enter Password",
            label: "Password",
            isPassField: true,
          ),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 3.0, horizontal: 150.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Homepage(
                              male: false,
                              female: false,
                            )));
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xff02B29A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Don't have an account? ",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
