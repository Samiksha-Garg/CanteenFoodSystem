import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/models/User.dart';
import 'package:canteen_system/providers/auth_service.dart';
import 'package:canteen_system/screens/user/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class UserProvider with ChangeNotifier {
  bool isLoading = false;
  late BuildContext _context;
  final _firestore = FirebaseFirestore.instance;
  UserModel _user = UserModel(id: "", name: "", email: "");

  UserModel get user => _user;
  set setContext(BuildContext context) {
    _context = context;
    notifyListeners();
  }

  Future<void> fetchAccountDetails(String fetchedUid) async {
    isLoading = true;
    notifyListeners();

    DocumentSnapshot<Map<String, dynamic>>? document = null;

    while (document == null) {
      var doc = await _firestore.collection('users').doc(fetchedUid).get();

      if (doc.exists) {
        document = doc;
      }
    }

    _user = UserModel.fromMap(document.data());

    Provider.of<Authentication>(_context, listen: false).setStatus =
        Status.Authenticated;
    isLoading = false;
    notifyListeners();
  }
}
