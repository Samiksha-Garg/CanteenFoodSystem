import 'dart:math';

import 'package:canteen_system/components/loading_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/providers/auth_service.dart';
import 'package:canteen_system/screens/authenticationScreen/components/social_media_button.dart';
import 'package:canteen_system/screens/authenticationScreen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/src/provider.dart';
import 'package:provider/src/consumer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailTextEditingController = TextEditingController(text: "");

  final _passwordTextEditingController = TextEditingController(text: "");
  final _resetPasswordController = TextEditingController(text: "");

  bool _emailError = false;
  bool _passwordError = false;

  @override
  Widget build(BuildContext context) {
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
      body: Consumer<Authentication>(builder: (context, _authProvider, _) {
        return MyLoadingBar(
          isLoading: _authProvider.status == Status.Authenticating,
          child: SingleChildScrollView(
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
                                color:
                                    _passwordError ? Colors.red : Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    _passwordError ? Colors.red : Colors.black),
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
                          String message = await _authProvider.signInAccount(
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
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: EdgeInsets.all(20.0),
                            child: AlertDialog(
                              backgroundColor: Colors.white,
                              insetPadding: EdgeInsets.zero,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              contentPadding: EdgeInsets.all(15.0),
                              title: Text(
                                'Enter your email',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              content: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w400,
                                ),
                                controller: _resetPasswordController,
                                validator: (val) =>
                                    val!.isEmpty ? 'Enter an email' : null,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  hintText: "Email address",
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: new Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Quicksand',
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.resolveWith(
                                            (states) {
                                      // If the button is pressed, return green, otherwise blue
                                      if (states
                                          .contains(MaterialState.pressed)) {
                                        return kSecondaryColor;
                                      }
                                      return kPrimaryColor;
                                    }),
                                  ),
                                  child: new Text(
                                    'Send Reset Link',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Quicksand',
                                    ),
                                  ),
                                  onPressed: () async {
                                    if (_resetPasswordController
                                            .text.isNotEmpty &&
                                        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                            .hasMatch(
                                          _resetPasswordController.text,
                                        )) {
                                      String message =
                                          await _authProvider.forgetPassword(
                                              email:
                                                  _resetPasswordController.text,
                                              context: context);

                                      if (message == "Success") {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(
                                              "Reset password link sent successfully!"),
                                          duration: Duration(seconds: 3),
                                        ));

                                        Navigator.pop(context);
                                        setState(() {
                                          _resetPasswordController.text = "";
                                        });
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(message),
                                          duration: Duration(seconds: 3),
                                        ));
                                      }
                                      // print(
                                      //   'Debug: ${resetPasswordController.text}',
                                      // );
                                      // Provider.of<AuthenticationService>(
                                      //   context,
                                      //   listen: false,
                                      // ).forgetPassword(
                                      //   email: resetPasswordController.text,
                                      //   context: context,
                                      // );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Enter Valid Email',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: 'Quicksand',
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Center(
                      child: Text(
                        'Forgot password ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(14),
                        ),
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
                      onPressed: () async {
                        String message = await _authProvider.logInWithGoogle();

                        if (message == "Success") {
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(message),
                            duration: Duration(seconds: 3),
                          ));
                        }
                      },
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: getProportionateScreenWidth(30)),
                  //   child: SocialMediaButton(
                  //     title: "Continue with Apple",
                  //     image: "assets/images/apple.png",
                  //     onPressed: () {

                  //     },
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: getProportionateScreenWidth(30)),
                  //   child: SocialMediaButton(
                  //     title: "Continue with Microsoft",
                  //     image: "assets/images/microsoft.png",
                  //     onPressed: () {},
                  //   ),
                  // ),

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
      }),
    );
  }
}
