import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'image_store.dart';

class ListImagePage extends StatefulWidget {
  const ListImagePage({Key? key, required this.listImageName})
      : super(key: key);

  final ListImageName listImageName;

  @override
  State<ListImagePage> createState() => _ListImagePageState();
}

class _ListImagePageState extends State<ListImagePage> {
  List<String> listImages = [];
  String title = "";
  @override
  void initState() {
    super.initState();

    switch (widget.listImageName) {
      case ListImageName.ramadan:
        listImages = AllImages.ramadan;
        title = 'تهاني رمضان';
        break;
      case ListImageName.fete:
        listImages = AllImages.fete;
        title = 'تهاني الاعياد';
        break;
      case ListImageName.zawaj:
        listImages = AllImages.zawaj;
        title = 'تهاني الزواج';
        break;
      case ListImageName.bebe:
        listImages = AllImages.bebe;
        title = 'تهاني المولود الجديد';
        break;
      case ListImageName.najah:
        listImages = AllImages.najah;
        title = 'تهاني النجاح';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.red,
      ),
      body: Container(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: listImages.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushNamed('preview',
                        params: {'imageName': listImages[index]});
                  },
                  child: Image.asset(listImages[index]));
            },
          )),
    );
  }
}
