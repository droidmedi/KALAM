import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_helper.dart';

import 'image_store.dart';

class ListImagePage extends StatefulWidget {

  const ListImagePage({Key? key, required this.listImageName})
      : super(key: key);

  final ListImageName listImageName;

  @override
  State<ListImagePage> createState() => _ListImagePageState();
}

class _ListImagePageState extends State<ListImagePage> {
  late BannerAd _bottomBannerAd;
  bool _isBottomBannerAdLoaded = false;

  void _createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBottomBannerAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );
    _bottomBannerAd.load();
  }
  List<String> listImages = [];
  String title = "";

  @override
  void initState() {
    super.initState();
    _createBottomBannerAd();
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
  void dispose() {
    super.dispose();
    _bottomBannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _isBottomBannerAdLoaded
          ? Container(
        height: _bottomBannerAd.size.height.toDouble(),
        width: _bottomBannerAd.size.width.toDouble(),
        child: AdWidget(ad: _bottomBannerAd),
      )
          : null,
      appBar: AppBar(
        title: Text('            '+title),
        backgroundColor: Colors.deepPurple,
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
