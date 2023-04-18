import 'package:counter_u_provider/Counter/Provider/C_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          title: Text(
            "Darshan Counter",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            )
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                      ),
                    ]),
                alignment: Alignment.center,
                child: Consumer<CounterProvider>(
                  builder: (context, value, child) => Text(
                    "${value.i}",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        Provider.of<CounterProvider>(context, listen: false)
                            .Addition();
                      },
                      child: button(Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.black,
                      ))),
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context, listen: false)
                          .Sub();
                    },
                    child: button(Icon(
                      Icons.remove,
                      size: 30,
                      color: Colors.black,
                    )),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context, listen: false)
                          .Two_kk();
                    },
                    child: button(Icon(
                      Icons.two_k_outlined,
                      size: 30,
                      color: Colors.black,
                    )),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context, listen: false)
                          .Three_kk();
                    },
                    child: button(Icon(
                      Icons.three_k_outlined,
                      size: 30,
                      color: Colors.black,
                    )),
                  ),
                  InkWell(
                    onTap: () {
                      Provider.of<CounterProvider>(context, listen: false)
                          .Four_kk();
                    },
                    child: button(Icon(
                      Icons.four_k_outlined,
                      size: 30,
                      color: Colors.black,
                    )),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Provider.of<CounterProvider>(context, listen: false).Reset();
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black, blurRadius: 5),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Clear",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(Icon i1) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 5),
          ]),
      alignment: Alignment.center,
      child: i1,
    );
  }
}
