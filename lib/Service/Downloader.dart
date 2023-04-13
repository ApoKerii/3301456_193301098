
import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

class Downloader{

  static Future<void> downloadAssets(String imagepath) async {


    final ByteData data = await rootBundle.load(imagepath);
    final Uint8List bytes= data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);

    final directory = await getTemporaryDirectory();
    final path=directory.path+"/ata1.png";
    await new File(path).writeAsBytes(bytes);
    await ImageGallerySaver.saveFile(path);
    await File(path).delete();



  }
}