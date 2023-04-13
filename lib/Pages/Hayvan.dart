import 'package:flutter/material.dart';
import 'package:apokeri/Service/Downloader.dart';

class Hayvan extends StatefulWidget {
  const Hayvan({Key? key}) : super(key: key);

  @override
  State<Hayvan> createState() => _HayvanState();
}

class _HayvanState extends State<Hayvan> {
  List<String> hayvandata = [
    "photo/hayvan1.png",
    "photo/hayvan2.png",
    "photo/hayvan3.png",
    "photo/hayvan4.png",
    "photo/hayvan5.png",
    "photo/hayvan6.png",
    "photo/hayvan7.png",
    "photo/hayvan8.png",
    "photo/hayvan9.png",
    "photo/hayvan10.png",
    "photo/hayvan11.png",
    "photo/hayvan12.png",
    "photo/hayvan13.png",
    "photo/hayvan14.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HAYVAN"),),
      body: ListView.builder(
          itemCount: hayvandata.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(hayvandata[index],fit: BoxFit.cover,),
                      width: double.infinity,
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () async {
                            await Downloader.downloadAssets(
                                hayvandata[index]).then((data) => {
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
                          },
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
