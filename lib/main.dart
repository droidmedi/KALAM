//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kalam/image_preview.dart';
import 'package:kalam/image_store.dart';

import 'list_image_page.dart';

void main() => runApp(Kalam());

class Kalam extends StatelessWidget {
  Kalam({Key? key}) : super(key: key);

  final _router = GoRouter(
    // initialLocation: '/preview',
    routes: [
      GoRoute(
          name: 'preview',
          path: '/preview/:imageName',
          builder: (context, state) {
            final imageName = state.params['imageName']!;
            return ImagePreview(imageName: imageName);
          }),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          // GoRoute(
          //     name: 'list',
          //     path: 'list/:listName',
          //     builder: (context, state) {
          //        final imageName = state.params['imageName']!;
          //       return ListImagePage(listImageName: ListImageName.ramadan);
          //     }),
          GoRoute(
            name: 'ramadan',
            path: 'ramadan',
            builder: (context, state) =>
                const ListImagePage(listImageName: ListImageName.ramadan),
          ),
          GoRoute(
            name: 'fete',
            path: 'fete',
            builder: (context, state) =>
                const ListImagePage(listImageName: ListImageName.fete),
          ),
          GoRoute(
            name: 'zawaj',
            path: 'zawaj',
            builder: (context, state) =>
                const ListImagePage(listImageName: ListImageName.zawaj),
          ),
          GoRoute(
            name: 'bebe',
            path: 'bebe',
            builder: (context, state) =>
                const ListImagePage(listImageName: ListImageName.bebe),
          ),
          GoRoute(
            name: 'najah',
            path: 'najah',
            builder: (context, state) =>
                const ListImagePage(listImageName: ListImageName.najah),
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
              title: const Text("        تهاني المناسبات"),
              background: Image.asset(
                'assets/T1.jpg',
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
                  imageName: 'assets/monasabat.png',
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
                  imageName: 'assets/NAISSANCE.jpg',
                  routeName: "bebe",
                ),
                buildHomeCard(
                  context: context,
                  title: 'تهاني النجاح',
                  imageName: 'assets/RE1.jpg',
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
