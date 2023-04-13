import 'package:flutter/material.dart';
import 'package:apokeri/Service/Downloader.dart';


class Basketbol extends StatefulWidget {
  const Basketbol({Key? key}) : super(key: key);

  @override
  State<Basketbol> createState() => _BasketbolState();
}

class _BasketbolState extends State<Basketbol> {
  List<String> arabaverileri = [
    "photo/basket1.png",
    "photo/basket2.png",
    "photo/basket3.png",
    "photo/basket4.png",
    "photo/basket5.png",
    "photo/basket6.png",
    "photo/basket7.png",
    "photo/basket8.png",
    "photo/basket9.png",
    "photo/basket10.png",
    "photo/basket11.png",
    "photo/basket12.png",
    "photo/basket13.png",
    "photo/basket14.png",
    "photo/basket15.png",
    "photo/basket16.png",
    "photo/basket17.png",
    "photo/basket18.png",
    "photo/basket19.png",
    "photo/basket20.png",
    "photo/basket21.png",

  ];

  @override
  Widget build(BuildContext context) {
    var sizex = (MediaQuery.of(context).size.width / 2) - 20;
    return Scaffold(
      appBar: AppBar(title: Text("BASKETBOL"),),
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