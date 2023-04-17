import 'package:counter_u_provider/Counter/View/Counter_scrren.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      routes: {
        "/":(context) => Counter_Scrren(),
      },
    ),
  );
}