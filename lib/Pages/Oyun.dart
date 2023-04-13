import 'package:flutter/material.dart';
import 'package:apokeri/Service/Downloader.dart';

class Oyun extends StatefulWidget {
  const Oyun({Key? key}) : super(key: key);

  @override
  State<Oyun> createState() => _OyunState();
}

class _OyunState extends State<Oyun> {

  List<String> oyundata=[
    "photo/oyun1.png",
    "photo/oyun2.png",
    "photo/oyun3.png",
    "photo/oyun4.png",
    "photo/oyun5.png",
    "photo/oyun6.png",
    "photo/oyun7.png",
    "photo/oyun8.png",
    "photo/oyun9.png",
    "photo/oyun10.png",
    "photo/oyun11.png",
    "photo/oyun12.png",
    "photo/oyun13.png",
    "photo/oyun14.png",
    "photo/oyun15.png",
    "photo/oyun16.png",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OYUN"),),
      body: ListView.builder(
          itemCount:oyundata.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(oyundata[index]),
                      width: double.infinity,
                    ),
                    Container(
                      child: TextButton(
                          onPressed:()async{
                            await  Downloader.downloadAssets(oyundata[index]).then((data) => {
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