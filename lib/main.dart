//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'affichageimages.dart';

void main() => runApp(Kalam());

class Kalam extends StatelessWidget {
  Kalam({Key? key}) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: 'ramadan',
            path: 'ramadan',
            builder: (context, state) => AffRamadan(),
          ),
          GoRoute(
            name: 'fete',
            path: 'fete',
            builder: (context, state) => AffFete(),
          ),
          GoRoute(
            name: 'zawaj',
            path: 'zawaj',
            builder: (context, state) => AffZawaj(),
          ),
          GoRoute(
            name: 'bebe',
            path: 'bebe',
            builder: (context, state) => AffBebe(),
          ),
          GoRoute(
            name: 'najah',
            path: 'najah',
            builder: (context, state) => AffNajah(),
          ),
        ],
      ),
    ],
    debugLogDiagnostics: true,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: "تهاني المناسبات",
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _pinned = true;
  final bool _snap = true;
  final bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
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
                buildHomeCard(
                  context: context,
                  title: 'تهاني رمضان',
                  imageName: 'assets/TAHANI R7.jpeg',
                  routeName: 'ramadan',
                ),
                buildHomeCard(
                  context: context,
                  title: 'تهاني الاعياد',
                  imageName: 'assets/a1.png',
                  routeName: 'fete',
                ),
                buildHomeCard(
                  context: context,
                  title: 'تهاني الزواج',
                  imageName: 'assets/z1.jpg',
                  routeName: 'zawaj',
                ),
                buildHomeCard(
                  context: context,
                  title: 'تهاني المولود الجديد',
                  imageName: 'assets/cat2.jpg',
                  routeName: "bebe",
                ),
                buildHomeCard(
                  context: context,
                  title: 'تهاني النجاح',
                  imageName: 'assets/cat2.jpg',
                  routeName: "najah",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card buildHomeCard({
    required BuildContext context,
    required String title,
    required String imageName,
    required String routeName,
  }) {
    return Card(
      // aid
      color: Colors.white,
      child: GestureDetector(
        onTap: () => GoRouter.of(context).goNamed(routeName),
        child: SizedBox(
          height: 140.0,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Image.asset(
                  imageName,
                  fit: BoxFit.fill,
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
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
