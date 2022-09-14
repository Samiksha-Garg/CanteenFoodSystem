import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: user(),
  ));
}

class user extends StatelessWidget {
  const user({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 46, 59, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 46, 59, 1),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'NAME',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 50.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-vector/black-checker-chess-square-background_350503-56.jpg?w=2000'),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                height: 20,
                width: 500,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(30, 30, 42, 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  'Edit Details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Divider(
              color: Color.fromRGBO(94, 167, 255, 0.59),
              height: 1.0,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 600,
                width: 500,
                color: Color.fromRGBO(30, 30, 46, 1),
                child: Text(
                  'Visit Our Website',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Divider(
              color: Color.fromRGBO(94, 167, 255, 0.59),
              height: 1.0,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 600,
                width: 500,
                color: Color.fromRGBO(30, 30, 46, 1),
                child: Text(
                  'Celestial Biscuits IGDTUW',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Divider(
              color: Color.fromRGBO(94, 167, 255, 0.59),
              height: 1.0,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 600,
                width: 500,
                color: Color.fromRGBO(30, 30, 46, 1),
                child: Text(
                  'Change Password ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Divider(
              color: Color.fromRGBO(94, 167, 255, 0.59),
              height: 1.0,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 20,
                width: 500,
                color: Color.fromRGBO(30, 30, 46, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 60,
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
                        size: 30,
                      ),
                    ),
                    Container(
                      height: 60,
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
                        size: 30,
                      ),
                    ),
                    Container(
                      height: 60,
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
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
