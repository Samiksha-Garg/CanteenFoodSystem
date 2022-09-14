import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PackagedFoodScreen extends StatelessWidget {
  const PackagedFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                ),
                SizedBox(width: 15.0),
                Text(
                  'PACKAGED FOODS',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0.05,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 30.0),
                Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.white,
                ),
                SizedBox(width: 20.0),
                Icon(
                  FontAwesomeIcons.cartArrowDown,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(
                  height: 120.0,
                  width: 150.0,
                  child: Image(image: AssetImage('assets/tile.jpg')),
                ),
                SizedBox(width: 5.0),
                SizedBox(
                  height: 120.0,
                  width: 150.0,
                  child: Image(image: AssetImage('assets/tile.jpg')),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(
                  height: 120.0,
                  width: 150.0,
                  child: Image(image: AssetImage('assets/tile.jpg')),
                ),
                SizedBox(width: 5.0),
                SizedBox(
                  height: 120.0,
                  width: 150.0,
                  child: Image(image: AssetImage('assets/tile.jpg')),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(
                  height: 120.0,
                  width: 150.0,
                  child: Image(image: AssetImage('assets/tile.jpg')),
                ),
                SizedBox(width: 5.0),
                SizedBox(
                  height: 120.0,
                  width: 150.0,
                  child: Image(image: AssetImage('assets/tile.jpg')),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 30.0),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.home,
              color: Colors.white,
            ),
            SizedBox(width: 130.0),
            Icon(
              Icons.menu_open,
              color: Colors.white,
            ),
            SizedBox(width: 120.0),
            Icon(
              Icons.settings,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
