import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({Key? key, required this.imageName}) : super(key: key);

  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Preview"),
      ),
      body: Column(
        children: [
          Card(
            child: Image.asset(
              imageName,
              fit: BoxFit.cover,
            ),
          ),
          TextButton.icon(
            onPressed: () async {
              ByteData imagebyte = await rootBundle.load(imageName);
              final temp = await getTemporaryDirectory();
              final path = '${temp.path}/image1.jpg';
              File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
              await Share.shareFiles([path], text: '');
            },
            icon: const Icon(Icons.share),
            label: const Text('share image'),
          )
        ],
      ),
    );
  }
}
