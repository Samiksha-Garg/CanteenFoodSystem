import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomBottomNavBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                child: Text(
                  'NAME',
                  style: kAppBarTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(30)),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              CircleAvatar(
                radius: getProportionateScreenWidth(104),
                backgroundColor: Colors.orange,
                child: CircleAvatar(
                  radius: getProportionateScreenWidth(100),
                  backgroundImage: const NetworkImage(
                      'https://img.freepik.com/premium-vector/black-checker-chess-square-background_350503-56.jpg?w=2000'),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Edit Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(20),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromRGBO(94, 167, 255, 0.59),
                height: 1.0,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: kSecondaryColor,
                  child: Text(
                    'Visit Our Website',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(20),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromRGBO(94, 167, 255, 0.59),
                height: 1.0,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: kSecondaryColor,
                  child: Text(
                    'Celestial Biscuits IGDTUW',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(20),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromRGBO(94, 167, 255, 0.59),
                height: 1.0,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: kSecondaryColor,
                  child: Text(
                    'Change Password ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(20),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromRGBO(94, 167, 255, 0.59),
                height: 1.0,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: kSecondaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: getProportionateScreenHeight(55),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(15),
                        child: ImageIcon(
                          NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/174/174857.png'),
                          color: Colors.blue[900],
                          size: getProportionateScreenHeight(30),
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(55),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(15),
                        child: ImageIcon(
                          NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/2111/2111679.png'),
                          color: Colors.pink,
                          size: getProportionateScreenHeight(30),
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(55),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(15),
                        child: ImageIcon(
                          NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/733/733579.png'),
                          color: Colors.lightBlue,
                          size: getProportionateScreenHeight(30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
