import 'package:flutter/material.dart';
import 'package:login/screens/signup_screen.dart';
import 'package:login/utils/color_utils.dart';

import '../reuseable_widget/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
              ],
            begin: Alignment.topCenter, end: Alignment.bottomCenter
          )
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 200) ,
            child: Column(
              children: <Widget>[
                logoWiget("assets/images/user-circle-regular-84.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "Enter Username",
                    Icons.person_outline,
                    false,
                    _emailTextController),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "Enter password",
                    Icons.lock_outline,
                    false,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                
                signInSignUpButton(context,true, (){}),
                signUpOption()
              ],
            ),
          )
        ),
      ),
    );
  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an Account?",
              style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
