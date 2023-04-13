import 'package:flutter/material.dart';
import 'package:apokeri/Service/Downloader.dart';


class Araba extends StatefulWidget {
  const Araba({Key? key}) : super(key: key);

  @override
  State<Araba> createState() => _ArabaState();
}

class _ArabaState extends State<Araba> {
  List<String> arabaverileri = [
    "photo/araba1.png",
    "photo/araba2.png",
    "photo/araba3.png",
    "photo/araba4.png",
    "photo/araba5.png",
    "photo/araba6.png",
    "photo/araba7.png",
    "photo/araba8.png",
    "photo/araba9.png",
    "photo/araba10.png",
    "photo/araba11.png",
  ];

  @override
  Widget build(BuildContext context) {
    var sizex = (MediaQuery.of(context).size.width / 2) - 20;
    return Scaffold(
      appBar: AppBar(title: Text("ARABA"),),
      body: ListView.builder(
          itemCount:arabaverileri.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(arabaverileri[index]),
                      width: double.infinity,
                    ),
                    Container(
                      child: TextButton(
                          onPressed:()async{
                            await  Downloader.downloadAssets(arabaverileri[index]).then((data) => {
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