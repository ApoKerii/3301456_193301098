import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:apokeri/Pages/Araba.dart';
import 'package:apokeri/Pages/Atam.dart';
import 'package:apokeri/Pages/Hayvan.dart';
import 'package:apokeri/Pages/Manzara.dart';
import 'package:apokeri/Pages/Oyun.dart';
import 'package:apokeri/Pages/Spor.dart';
import 'package:apokeri/Pages/Dizifilm.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {




  Future<void> downloadAssets() async {


    final ByteData data = await rootBundle.load("photo/araba3.png");
    final Uint8List bytes= data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);


    final directory = await getTemporaryDirectory();
    final path=directory.path+"/ata1.png";
    await new File(path).writeAsBytes(bytes);
    await ImageGallerySaver.saveFile(path);
    await File(path).delete();
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnaSayfa()
    );
  }
}


class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade500,
        appBar: AppBar(
          title: const Center(child: Text("ApoKeri")),
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Atam()));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset("photo/ata.png"),

                      ],
                    ),
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),

                    ),
                    width: double.infinity,
                    height: 222,
                    margin: EdgeInsets.only(


                    ),
                  ),
                ),





                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Araba()));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset("photo/araba.png",fit:BoxFit.cover),

                      ],
                    ),
                    width: double.infinity,
                    height: 222,
                    margin: EdgeInsets.only(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                ),






                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Spor()));
                  },
                  child: Container(
                    child:
                    Image.asset("photo/spor.png", fit:BoxFit.cover ),


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,

                    ),
                    width: double.infinity,
                    height: 220,
                    margin: EdgeInsets.only(),
                  ),
                ),





                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dizifilm()));
                  },
                  child: Container(
                    child:
                    Image.asset("photo/dizifilm.png", fit:BoxFit.cover ),


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,

                    ),
                    width: double.infinity,
                    height: 220,
                    margin: EdgeInsets.only(),
                  ),
                ),






                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Oyun()));
                  },
                  child: Container(
                    child:
                    Image.asset("photo/oyun.png", fit:BoxFit.cover ),


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,

                    ),
                    width: double.infinity,
                    height: 220,
                    margin: EdgeInsets.only(),
                  ),
                ),






                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Manzara()));
                  },
                  child: Container(
                    child:
                    Image.asset("photo/manzara.png", fit:BoxFit.cover ),


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,

                    ),
                    width: double.infinity,
                    height: 220,
                    margin: EdgeInsets.only(),
                  ),
                ),






                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Hayvan()));
                  },
                  child: Container(
                    child:
                    Image.asset("photo/hayvan.png", fit:BoxFit.cover ),


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,

                    ),
                    width: double.infinity,
                    height: 220,
                    margin: EdgeInsets.only(),
                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}