import 'package:flutter/material.dart';
import 'package:apokeri/Service/Downloader.dart';


class Atam extends StatefulWidget {
  const Atam({Key? key}) : super(key: key);

  @override
  State<Atam> createState() => _AtamState();
}

class _AtamState extends State<Atam> {



  List<String> atamdata = [
    "photo/ata1.png",
    "photo/ata2.png",
    "photo/ata3.png",
    "photo/ata4.png",
    "photo/ata5.png",
    "photo/ata6.png",
    "photo/ata7.png",
    "photo/ata8.png",
    "photo/ata9.png",
    "photo/ata10.png",
    "photo/ata11.png",
    "photo/ata12.png",
    "photo/ata13.png",
    "photo/ata14.png",
    "photo/ata15.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ATATÜRK"),),
      body: ListView.builder(
          itemCount: atamdata.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(atamdata[index]),
                      width: double.infinity,
                    ),
                    Container(
                      child: TextButton(
                          onPressed:()async{
                            await  Downloader.downloadAssets(atamdata[index]).then((data) => {
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