import "package:flutter/material.dart";
import 'package:apokeri/Service/Downloader.dart';


class Dizi extends StatefulWidget {
  const Dizi({Key? key}) : super(key: key);

  @override
  State<Dizi> createState() => _DiziState();
}

class _DiziState extends State<Dizi> {

  List<String> dizidata = [
    "photo/dizi1.png",
    "photo/dizi2.png",
    "photo/dizi3.png",
    "photo/dizi4.png",
    "photo/dizi5.png",
    "photo/dizi6.png",
    "photo/dizi7.png",
    "photo/dizi8.png",
    "photo/dizi9.png",
    "photo/dizi10.png",
    "photo/dizi11.png",
    "photo/dizi12.png",
    "photo/dizi13.png",
    "photo/dizi14.png",
    "photo/dizi15.png",


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DİZİ"),),
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