import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/screens/authenticalScreen/components/social_media_button.dart';
import 'package:canteen_system/screens/authenticalScreen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../helper/size_config.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.white),
                  cursorColor: kTextColor,
                  decoration: InputDecoration(
                    border: InputBorder.none,

                    hintText: 'Username',
                    hintStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.white),
                    //prefixIcon: Icon(Icons.face, color: Colors.white,),
                    //fillColor: Colors.white,
                    filled: true,
                  ),
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
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.white),
                  cursorColor: kTextColor,
                  decoration: InputDecoration(
                    border: InputBorder.none,

                    hintText: 'Email',
                    hintStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.white),
                    //prefixIcon: Icon(Icons.face, color: Colors.white,),
                    //fillColor: Colors.white,
                    filled: true,
                  ),
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
                  cursorColor: kTextColor,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.white),
                    //prefixIcon: Icon(Icons.face, color: Colors.white,),
                    //fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(40)),
                child: Container(
                  padding: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        TextButton.styleFrom(
                          primary: Colors.white70,
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
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
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
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
                  ]), //not a mem
            ],
          ),
        ),
      ),
    );
  }
}
