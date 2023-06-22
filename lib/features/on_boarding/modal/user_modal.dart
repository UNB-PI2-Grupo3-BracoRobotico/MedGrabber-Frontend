import 'package:flutter/material.dart';

class UserModal extends ChangeNotifier {
  String? email;
  String? password;
  String? storeName;
  String? phoneNumber;

  int activeIndex = 0;
  int totalIndex = 4;
}
