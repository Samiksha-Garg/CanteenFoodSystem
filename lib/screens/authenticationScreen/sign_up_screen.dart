import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/providers/auth_service.dart';
import 'package:canteen_system/screens/authenticationScreen/components/social_media_button.dart';
import 'package:canteen_system/screens/authenticationScreen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/src/provider.dart';

import '../../helper/size_config.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _fullNameTextEditingController = TextEditingController(text: "");

  final _emailTextEditingController = TextEditingController(text: "");

  final _passwordTextEditingController = TextEditingController(text: "");

  bool _nameError = false;
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //hello
              Text('Hi!',
                  style: kAppBarTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(30))),
              Text('Create a new account', style: kHeadingTextStyle),
              SizedBox(height: getProportionateScreenHeight(25)),
              Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    //border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  inputFormatters: [
                    (FilteringTextInputFormatter(RegExp(r'[a-zA-Z\s+]'),
                        allow: true))
                  ],
                  controller: _fullNameTextEditingController,
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.white),
                  cursorColor: kTextColor,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: _nameError ? Colors.red : Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: _nameError ? Colors.red : Colors.black),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.white),
                    filled: true,
                  ),
                  onChanged: (value) {
                    if ((value.length == 1 && value[0] == " ") ||
                        value.isEmpty) {
                      _fullNameTextEditingController.text = '';
                      setState(() {
                        _nameError = true;
                      });
                    } else {
                      setState(() {
                        _nameError = false;
                      });
                    }
                  },
                ),
              ),
              Visibility(
                visible: _nameError,
                child: Text(
                  "*Name can't be empty",
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
                    if (_passwordTextEditingController.text.length <= 5) {
                      setState(() {
                        _passwordError = true;
                      });
                    } else if (_passwordTextEditingController.text
                        .contains(" ")) {
                      setState(() {
                        _passwordError = true;
                      });
                    } else {
                      setState(() {
                        _passwordError = false;
                      });
                    }
                  },
                ),
              ),
              Visibility(
                visible: _passwordError,
                child: Text(
                  "*Shoule be atleast 6 characters long and not contain white spaces",
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
                    if (_nameError ||
                        _emailError ||
                        _passwordError ||
                        _fullNameTextEditingController.text.isEmpty ||
                        _emailTextEditingController.text.isEmpty ||
                        _passwordTextEditingController.text.isEmpty) {
                      if (_fullNameTextEditingController.text.isEmpty) {
                        setState(() {
                          _nameError = true;
                        });
                      }

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
                      bool worked = await authProvider.signUpAccount(
                          _emailTextEditingController.text,
                          _passwordTextEditingController.text,
                          _fullNameTextEditingController.text);
                      if (!worked) {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text(
                              'Trouble in creating account. Maybe user already exists in the database'),
                          duration: Duration(seconds: 3),
                        ));
                      } else {
                        Navigator.pop(context);
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
                          'Sign Up',
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
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Already have an Account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                        child: Text(
                          'Log in',
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
