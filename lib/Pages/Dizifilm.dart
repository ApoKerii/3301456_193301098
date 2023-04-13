import 'package:apokeri/Pages/Dizi.dart';
import 'package:apokeri/Pages/Film.dart';
import 'package:flutter/material.dart';




class Dizifilm extends StatelessWidget {
  const Dizifilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      appBar: AppBar(

        title: Center(child: Text("Dizi - Film")),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dizi()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  height: 230,
                  child: Column(
                    children: [
                      Image.asset("photo/dizi.png"),

                    ],
                  ),
                  margin: EdgeInsets.only(


                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Film()));
                },
                child: Container(
                  width: double.infinity,
                  height: 240,
                  child:  Column(
                    children: [
                      Image.asset("photo/film.png"),

                    ],),
                  margin: EdgeInsets.only(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}