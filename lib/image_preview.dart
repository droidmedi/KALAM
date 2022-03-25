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
        title: const Text("             مشاركة الصور"),
      ),
      body: Column(
        children: [
          Card(
            child: Image.asset(
              imageName,
              fit: BoxFit.cover,
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton.icon(
                onPressed: () async {
                  ByteData imagebyte = await rootBundle.load(imageName);
                  final temp = await getTemporaryDirectory();
                  final path = '${temp.path}/image1.jpg';
                  File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
                  await Share.shareFiles([path], text: '');
                },
                icon: const Icon(Icons.share,size: 30.0,color: Colors.deepPurple,),
                label: const Text('إرسال',style: TextStyle(fontSize: 30.0,color: Colors.deepPurple),),

              ),
            ),
            color: Colors.pink[100],
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(23.0))),
          )
        ],
      ),
    );
  }
}
