import 'package:flutter/material.dart';
import 'package:apokeri/Service/Downloader.dart';


class Tenis extends StatefulWidget {
  const Tenis({Key? key}) : super(key: key);

  @override
  State<Tenis> createState() => _TenisState();
}

class _TenisState extends State<Tenis> {
  List<String> arabaverileri = [
    "photo/tenis1.png",
    "photo/tenis2.png",
    "photo/tenis3.png",
    "photo/tenis4.png",
    "photo/tenis5.png",
    "photo/tenis6.png",
    "photo/tenis7.png",
    "photo/tenis8.png",
    "photo/tenis9.png",
  ];

  @override
  Widget build(BuildContext context) {
    var sizex = (MediaQuery.of(context).size.width / 2) - 20;
    return Scaffold(
      appBar: AppBar(title: Text("TENİS"),),
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