import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/components/loading_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Products.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:canteen_system/helper/theme.dart';
import '../../helper/size_config.dart';

// String horseUrl = 'https://i.stack.imgur.com/Dw6f7.png';
// String cowUrl = 'https://i.stack.imgur.com/XPOr3.png';
// String camelUrl = 'https://i.stack.imgur.com/YN0m7.png';
// String sheepUrl = 'https://i.stack.imgur.com/wKzo8.png';
// String goatUrl = 'https://i.stack.imgur.com/Qt4JP.png';

class adminItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("ITEMS"),
        backgroundColor: kPrimaryColor,
      ),
      body: BodyWidget(),
    );
  }
}

String horseUrl = 'https://i.stack.imgur.com/Dw6f7.png';
String cowUrl = 'https://i.stack.imgur.com/XPOr3.png';
String camelUrl = 'https://i.stack.imgur.com/YN0m7.png';
String sheepUrl = 'https://i.stack.imgur.com/wKzo8.png';
String goatUrl = 'https://i.stack.imgur.com/Qt4JP.png';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(horseUrl),
          ),
          title: Text('Lays',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
              )),
          // ignore: prefer_const_constructors
          subtitle: Text(
            'Rs.20',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.check_box_outline_blank_rounded,
                  color: Colors.white)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(cowUrl),
          ),
          title: Text('Maggi',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
              )),
          subtitle: Text('Rs. 30',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
              )),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check_box_outline_blank_rounded,
                color: Colors.white,
              )),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(cowUrl),
          ),
          title: Text('COCA - COLA',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
              )),
          subtitle: Text('Rs. 80',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
              )),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.check_box_outline_blank_rounded,
                  color: Colors.white)),
          //  Row(
          //   children: [
          //     IconButton(onPressed: () {}, icon: Icon(Icons.check_box_outline_blank_rounded)),

          //   ],
          // ),
        ),
      ],
    );
  }
}
