import 'package:flutter/foundation.dart';

class HomeViewModel extends ChangeNotifier {
  String _text = "This is home Fragment";
  
  String get text => _text;

  void updateText(String newText) {
    _text = newText;
    notifyListeners();
  }
} 