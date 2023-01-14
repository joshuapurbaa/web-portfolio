import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  bool _isVisible = false;
  bool get isVisible => _isVisible;

  void onTapped() {
    _isVisible = !_isVisible;
    notifyListeners();
  }
}
