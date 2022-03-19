import 'dart:ui';

import 'package:flutter/material.dart';
import 'affichageimages.dart';

void main() => runApp(Kalam());

class Kalam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "تهاني المناسبات",
      home: Acceuil(),
    );
  }
}

class Acceuil extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Acceuil> {
  static const kRouteName = '/AnimalSounds';
  bool _pinned = true;
  bool _snap = true;
  bool _floating = true;

  @override
  Widget build(BuildContext context) {
    debugPrint('RouteName=${ModalRoute.of(context)?.settings.name}');
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("تهاني المناسبات"),
              background: Image.asset(
                'assets/monasabat.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.

          SliverFillRemaining(
            hasScrollBody: true,
            fillOverscroll: true,
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 140.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: InkWell(
                                splashColor: Colors.deepOrange,
                                onTap: () {
                                  var route = MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AffRamadan(),
                                  );
                                  Navigator.of(context).push(route);
                                  // Navigator.push(context, _PageTwo());
                                },
                                child: Image.asset(
                                  'assets/TAHANI R7.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Text(
                                  'تهاني رمضان',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 140.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: InkWell(
                                splashColor: Colors.deepOrange,
                                onTap: () {
                                  var route = MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AffImage(),
                                  );
                                  Navigator.of(context).push(route);
                                  // Navigator.push(context, _PageTwo());
                                },
                                child: Image.asset(
                                  'assets/cat2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Text(
                                  'تهاني الاعياد',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 140.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: InkWell(
                                splashColor: Colors.deepOrange,
                                onTap: () {
                                  var route = MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AffImage(),
                                  );
                                  Navigator.of(context).push(route);
                                  // Navigator.push(context, _PageTwo());
                                },
                                child: Image.asset(
                                  'assets/cat2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Text(
                                  'تهاني الزواج',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 140.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: InkWell(
                                splashColor: Colors.deepOrange,
                                onTap: () {
                                  var route = MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AffImage(),
                                  );
                                  Navigator.of(context).push(route);
                                  // Navigator.push(context, _PageTwo());
                                },
                                child: Image.asset(
                                  'assets/cat2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Text(
                                  'تهاني المولود الجديد',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 140.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: InkWell(
                                splashColor: Colors.deepOrange,
                                onTap: () {
                                  var route = MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AffImage(),
                                  );
                                  Navigator.of(context).push(route);
                                  // Navigator.push(context, _PageTwo());
                                },
                                child: Image.asset(
                                  'assets/cat2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Text(
                                  'تهاني النجاح',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
