import 'package:apokeri/Pages/Basketbol.dart';
import 'package:apokeri/Pages/Futbol.dart';
import 'package:apokeri/Pages/Tenis.dart';
import 'package:flutter/material.dart';




class Spor extends StatelessWidget {
  const Spor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      appBar: AppBar(

        title: Center(child: Text("Spor")),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Futbol()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  height: 230,
                  child: Column(
                    children: [
                      Image.asset("photo/futbol.png"),

                    ],
                  ),
                  margin: EdgeInsets.only(


                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Basketbol()));
                },
                child: Container(
                  width: double.infinity,
                  height: 230,
                  child:  Column(
                    children: [
                      Image.asset("photo/basketbol.png"),

                    ],),
                  margin: EdgeInsets.only(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Tenis()));
                },
                child: Container(
                  child: Column(
                    children: [
                      Image.asset("photo/tenis.png"),

                    ],),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  width: double.infinity,
                  height: 240,
                  margin: EdgeInsets.only( ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}