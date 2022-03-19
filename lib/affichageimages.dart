import 'package:flutter/material.dart';


class AffRamadan extends StatelessWidget {
  List<String> images1 = [
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
  List<String> images2 = [
    'assets/cat1.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',

  ];
  //final int value=1;
  // AffImage({Key key, this.value}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Demo"),
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
class AffFete extends StatelessWidget {
  List<String> images1 = [
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
  List<String> images2 = [
    'assets/cat1.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',

  ];
  //final int value=1;
  // AffImage({Key key, this.value}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: images1.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
  List<String> images1 = [
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
  List<String> images2 = [
    'assets/cat1.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',

  ];
  //final int value=1;
  // AffImage({Key key, this.value}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: images1.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
  List<String> images1 = [
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
  List<String> images2 = [
    'assets/cat1.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',

  ];
  //final int value=1;
 // AffImage({Key key, this.value}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(

              itemCount: images1.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
  List<String> images1 = [
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
  List<String> images2 = [
    'assets/cat1.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',

  ];
  //final int value=1;
  // AffImage({Key key, this.value}) : super(key: key);


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
  List<String> images1 = [
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
  List<String> images2 = [
    'assets/cat1.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
    'assets/cat5.jpg',
    'assets/cat6.jpg',

  ];
  //final int value=1;
  // AffImage({Key key, this.value}) : super(key: key);


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