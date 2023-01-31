import 'package:flutter/cupertino.dart';

class CounterController extends ChangeNotifier {
  var _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
