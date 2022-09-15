import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Payment(),
  ));
}

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 46, 59, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 46, 59, 1),
        elevation: 3.0,
        leading: IconButton(
          icon: ImageIcon(
            NetworkImage('https://cdn-icons-png.flaticon.com/512/860/860808.png'),
            size: 30.0,
          ),
          onPressed: () {},
        ),
        title: Text(
          'PAYMENT',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
            iconSize: 32,
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            iconSize: 32,
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 10),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Debit/Credit Card',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(30),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'GPay',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 10),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Paytm',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 10),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'PhonePay',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 10),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Cash',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromRGBO(2, 51, 112, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '+ Add Payment Option',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
