import 'package:flutter/cupertino.dart';

class PhoneNumber with ChangeNotifier {
  String? phoneNumber;

  void setPhoneNumber(takenPhoneNumber) {
    phoneNumber = takenPhoneNumber;
    notifyListeners();
  }
}
