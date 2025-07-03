import 'package:flutter/services.dart';

class ImageToBytesHelper {
  static Future<Uint8List> loadAssetImageAsBytes({required String path}) async {
    final byteData = await rootBundle.load(path);
    return byteData.buffer.asUint8List();
  }
}
