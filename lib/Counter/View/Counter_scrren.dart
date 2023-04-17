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
          title: Text("Darshan Counter",style: TextStyle(fontSize: 25,color: Colors.white),),
          centerTitle: true,
          actions: [
            Icon(Icons.person,size: 30,color: Colors.white,)
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.black,blurRadius: 5,
                  ),]
                ),
                alignment: Alignment.center,
                child: Text("00",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: () {

                  },child: button(Icon(Icons.add,size: 30,color: Colors.black,))),
                  button(Icon(Icons.remove,size: 30,color: Colors.black,)),
                  button(Icon(Icons.two_k_outlined,size: 30,color: Colors.black,)),
                  button(Icon(Icons.three_k_outlined,size: 30,color: Colors.black,)),
                  button(Icon(Icons.four_k_outlined,size: 30,color: Colors.black,)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget button(Icon i1)
  {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black,blurRadius: 5),]
      ),
      alignment: Alignment.center,
      child: i1,
    );
  }
}
