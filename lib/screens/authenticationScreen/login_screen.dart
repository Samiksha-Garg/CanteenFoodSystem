import 'dart:math';

import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/providers/auth_service.dart';
import 'package:canteen_system/screens/authenticationScreen/components/social_media_button.dart';
import 'package:canteen_system/screens/authenticationScreen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/src/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailTextEditingController = TextEditingController(text: "");

  final _passwordTextEditingController = TextEditingController(text: "");

  bool _emailError = false;
  bool _passwordError = false;

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<Authentication>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(
          children: [
            Container(
              height: getProportionateScreenHeight(50),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                'assets/images/logo.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenHeight(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //hello
              Text('Welcome!',
                  style: kAppBarTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(30))),
              Text('Sign in to continue', style: kHeadingTextStyle),
              SizedBox(height: getProportionateScreenHeight(25)),
              Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    //border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  controller: _emailTextEditingController,
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.white),
                  cursorColor: kTextColor,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: _emailError ? Colors.red : Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: _emailError ? Colors.red : Colors.black),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.white),
                    //prefixIcon: Icon(Icons.face, color: Colors.white,),
                    //fillColor: Colors.white,
                    filled: true,
                  ),
                  onChanged: (v) {
                    if (EmailValidator.validate(
                        _emailTextEditingController.text)) {
                      setState(() {
                        _emailError = false;
                      });
                    } else {
                      setState(() {
                        _emailError = true;
                      });
                    }
                  },
                ),
              ),
              Visibility(
                visible: _emailError,
                child: Text(
                  "*Not a valid email",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: getProportionateScreenWidth(12)),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    //border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                    controller: _passwordTextEditingController,
                    obscureText: true,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.white),
                    cursorColor: kTextColor,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: _passwordError ? Colors.red : Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: _passwordError ? Colors.red : Colors.black),
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          color: Colors.white),
                      //prefixIcon: Icon(Icons.face, color: Colors.white,),
                      //fillColor: Colors.white,
                      filled: true,
                    ),
                    onChanged: (v) {
                      if (_passwordTextEditingController.text.isEmpty) {
                        setState(() {
                          _passwordError = true;
                        });
                      } else {
                        setState(() {
                          _passwordError = false;
                        });
                      }
                    }),
              ),
              Visibility(
                visible: _passwordError,
                child: Text(
                  "*Password can't be empty",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: getProportionateScreenWidth(12)),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(40)),
                child: InkWell(
                  onTap: () async {
                    if (_emailTextEditingController.text.isEmpty ||
                        _passwordTextEditingController.text.isEmpty ||
                        _emailError ||
                        _passwordError) {
                      if (_emailTextEditingController.text.isEmpty) {
                        setState(() {
                          _emailError = true;
                        });
                      }

                      if (_passwordTextEditingController.text.isEmpty) {
                        setState(() {
                          _passwordError = true;
                        });
                      }
                    } else {
                      String message = await authProvider.signInAccount(
                          _emailTextEditingController.text,
                          _passwordTextEditingController.text);

                      if (message == "Success") {
                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(message),
                          duration: Duration(seconds: 3),
                        ));
                      }
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(8)),
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(18)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Center(
                child: Text(
                  'Forgot password ?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(14),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      ' -- or -- ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30)),
                child: SocialMediaButton(
                  title: "Continue with Google",
                  image: "assets/images/googleadobe.png",
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30)),
                child: SocialMediaButton(
                  title: "Continue with Apple",
                  image: "assets/images/apple.png",
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30)),
                child: SocialMediaButton(
                  title: "Continue with Microsoft",
                  image: "assets/images/microsoft.png",
                  onPressed: () {},
                ),
              ),

              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't Have An Account ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
              ), //not a mem
            ],
          ),
        ),
      ),
    );
  }
}
