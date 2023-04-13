import 'package:flutter/material.dart';
import 'package:apokeri/Service/Downloader.dart';


class Futbol extends StatefulWidget {
  const Futbol({Key? key}) : super(key: key);

  @override
  State<Futbol> createState() => _FutbolState();
}

class _FutbolState extends State<Futbol> {
  List<String> arabaverileri = [
    "photo/futbol1.png",
    "photo/futbol2.png",
    "photo/futbol3.png",
    "photo/futbol4.png",
    "photo/futbol5.png",
    "photo/futbol6.png",
    "photo/futbol7.png",
    "photo/futbol8.png",
    "photo/futbol9.png",
    "photo/futbol10.png",
    "photo/futbol11.png",
    "photo/futbol12.png",
    "photo/futbol13.png",
    "photo/futbol14.png",
    "photo/futbol15.png",
    "photo/futbol16.png",
    "photo/futbol17.png",
    "photo/futbol18.png",
    "photo/futbol19.png",
    "photo/futbol20.png",
    "photo/futbol21.png",
    "photo/futbol22.png",
    "photo/futbol23.png",
    "photo/futbol24.png",
    "photo/futbol25.png",
    "photo/futbol26.png",
    "photo/futbol27.png",
    "photo/futbol28.png",
    "photo/futbol29.png",
    "photo/futbol30.png",
    "photo/futbol31.png",
    "photo/futbol32.png",
    "photo/futbol33.png",
    "photo/futbol34.png",
    "photo/futbol35.png",
  ];

  @override
  Widget build(BuildContext context) {
    var sizex = (MediaQuery.of(context).size.width / 2) - 20;
    return Scaffold(
      appBar: AppBar(title: Text("FUTBOL"),),
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