import 'package:attendence_traking_system/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:GradientScaffold.gradientDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text('Attendence Traking System',style: AppBarDecoration.appBarStyle 
        )),
        body:Column(children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Write your Attendence logic here..!")
                ],
              ),
            )
          )
        ],),
        // ---------------bottomNavigationBar Put Here---------------------------
      ),
    );
  }
}