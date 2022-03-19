import 'package:flutter/material.dart';


class AffRamadan extends StatelessWidget {
  List<String> Rimg = [
    'assets/TAHANI R1.jpeg',
    'assets/TAHANI R2.jpeg',
    'assets/TAHANI R3.jpeg',
    'assets/TAHANI R4.jpeg',
    'assets/TAHANI R5.jpeg',
    'assets/TAHANI R6.jpeg',
    'assets/TAHANI R7.jpeg',
    'assets/TAHANI R8.jpeg',
    'assets/TAHANI R9.jpeg',
    'assets/TAHANI R10.jpeg',
    'assets/TAHANI R11.jpeg',
    'assets/TAHANI R12.jpeg',
    'assets/TAHANI R13.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("تهاني رمضان"),

          backgroundColor: Colors.blueGrey,

        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: Rimg.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Image.asset(Rimg[index]);
              },
            )),
      ),
    );
  }
}
class AffFete extends StatelessWidget {
 final List<String> images1 = [
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
  ];

  //final int value=1;
  // AffImage({Key key, this.value}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("تهاني الاعياد"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: images1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Image.asset(images1[index]);
              },
            )),
      ),
    );
  }
}
class AffZawaj extends StatelessWidget {
 final  List<String> images1 = [
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: images1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Image.asset(images1[index]);
              },
            )),
      ),
    );
  }
}
class AffImage extends StatelessWidget {
  final List<String> images1 = [
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: images1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Image.asset(images1[index]);
              },
            )),
      ),
    );
  }
}
class AffNajah extends StatelessWidget {
  final List<String> images1 = [
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: images1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Image.asset(images1[index]);
              },
            )),
      ),
    );
  }
}
class AffBebe extends StatelessWidget {
  final List<String> images1 = [
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',
    'assets/cat7.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: images1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Image.asset(images1[index]);
              },
            )),
      ),
    );
  }
}