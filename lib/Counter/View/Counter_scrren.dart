import 'package:flutter/material.dart';

class Counter_Scrren extends StatefulWidget {
  const Counter_Scrren({Key? key}) : super(key: key);

  @override
  State<Counter_Scrren> createState() => _Counter_ScrrenState();
}

class _Counter_ScrrenState extends State<Counter_Scrren> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Darshan Counter",style: TextStyle(fontSize: 20,color: Colors.white),),
          centerTitle: true,
        ),
      ),
    );
  }
}
