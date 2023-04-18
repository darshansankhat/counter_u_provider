import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
  int i = 0;

  void Addition()
  {
    i++;

    notifyListeners();
  }
  void Sub()
  {
    i--;

    notifyListeners();
  }
  void Two_kk()
  {
    i*=2;

    notifyListeners();
  }
  void Three_kk()
  {
    i*=3;

    notifyListeners();
  }
  void Four_kk()
  {
    i*=4;

    notifyListeners();
  }
  void Reset()
  {
    i=0;

    notifyListeners();
  }
}