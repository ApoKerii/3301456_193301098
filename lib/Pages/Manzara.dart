import 'package:flutter/material.dart';
import 'package:apokeri/Service/Downloader.dart';

class Manzara extends StatefulWidget {
  const Manzara({Key? key}) : super(key: key);

  @override
  State<Manzara> createState() => _ManzaraState();
}

class _ManzaraState extends State<Manzara> {
  List<String> manzaradata = [
    "photo/manzara1.png",
    "photo/manzara2.png",
    "photo/manzara3.png",
    "photo/manzara4.png",
    "photo/manzara5.png",
    "photo/manzara6.png",
    "photo/manzara7.png",
    "photo/manzara8.png",
    "photo/manzara9.png",
    "photo/manzara10.png",
    "photo/manzara11.png",
    "photo/manzara12.png",
    "photo/manzara13.png",
    "photo/manzara14.png",
    "photo/manzara15.png",
    "photo/manzara16.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MANZARA"),),
      body: ListView.builder(
          itemCount: manzaradata.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        manzaradata[index],
                        fit: BoxFit.contain,
                      ),
                      width: double.infinity,
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () async {
                            await Downloader.downloadAssets(manzaradata[index])
                                .then((data) => {
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
