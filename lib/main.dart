import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/helper/theme.dart';
import 'package:canteen_system/screens/cartScreen/cart_screen.dart';
import 'package:canteen_system/screens/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const Home(),
      // home: const MyHomePage(title: 'Hello'),
    );
  }
}
