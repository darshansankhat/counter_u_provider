import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
  int i = 0;

  void Addition()
  {
    i++;

    notifyListeners();
  }
}