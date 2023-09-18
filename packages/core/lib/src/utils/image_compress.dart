import 'package:flutter/services.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';


Future<Uint8List> testCompressAsset(String assetName) async {
  var list = await FlutterImageCompress.compressAssetImage(
    assetName,
    minHeight: 1920,
    minWidth: 1080,
    quality: 96,
    rotate: 180,
  );

  return list!;
}
