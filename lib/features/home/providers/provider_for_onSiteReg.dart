import 'package:flutter/cupertino.dart';



class VisibilityProvider extends ChangeNotifier {
  bool _isVisible = false;
  bool _toggle=false;

  void show() {
    _isVisible = true;
    notifyListeners();
  }

  void hide() {
    _isVisible = false;
    notifyListeners();
  }

  void toggling() {
    _toggle = !_toggle;
    notifyListeners();
  }



  bool get isVisible => _isVisible;
  bool get toggle => _toggle;
}

