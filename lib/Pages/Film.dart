import "package:flutter/material.dart";
import 'package:apokeri/Service/Downloader.dart';


class Film extends StatefulWidget {
  const Film({Key? key}) : super(key: key);

  @override
  State<Film> createState() => _FilmState();
}

class _FilmState extends State<Film> {

  List<String> dizidata = [
    "photo/film1.png",
    "photo/film2.png",
    "photo/film3.png",
    "photo/film4.png",
    "photo/film5.png",
    "photo/film6.png",
    "photo/film7.png",
    "photo/film8.png",
    "photo/film9.png",
    "photo/film10.png",
    "photo/film11.png",
    "photo/film12.png",
    "photo/film13.png",
    "photo/film14.png",
    "photo/film15.png",
    "photo/film16.png",
    "photo/film17.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FİLM"),),
      body: ListView.builder(
          itemCount:dizidata.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(dizidata[index],fit: BoxFit.cover,),
                      width: double.infinity,
                    ),
                    Container(
                      child: TextButton(
                          onPressed:()async{
                            await  Downloader.downloadAssets(dizidata[index]).then((data) => {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Process"),
                                    content: Text("Downloaded"),
                                    actions: [
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons
                                              .done_outline_rounded))
                                    ],
                                  );
                                  ;
                                },
                              )
                            });

                          } ,
                          child: Text(
                            "İndir",
                            style: TextStyle(color: Colors.white),
                          )),
                      color: Colors.blue,
                      width: double.infinity,
                    )
                  ],
                ));
          }),
    );
  }
}