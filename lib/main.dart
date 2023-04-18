import 'package:counter_u_provider/Counter/Provider/C_Provider.dart';
import 'package:counter_u_provider/Counter/View/Counter_scrren.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create:(context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Counter_Scrren(),
        },
      ),
    ),
  );
}