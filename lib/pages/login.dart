import 'package:fieldteller/pages/home_page.dart';
import 'package:fieldteller/pages/reset_password.dart';
import 'package:fieldteller/widgets/login_form.dart';
import 'package:fieldteller/widgets/login_option.dart';
import 'package:flutter/material.dart';
import '../home.dart';
import '/theme.dart';
import '/widgets/primary_button.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Welcome Back',
                style: titleText,
              ),

              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Enter your credentials',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LogInForm(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: Center(
                      child: Text('Log in',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Montserrat')),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Text(
              //   'Or log in with:',
              //   style: subTitle.copyWith(color: kBlackColor),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
