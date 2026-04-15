// ignore_for_file: prefer_const_constructors

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdBannerHome {
  static BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-6532773794891797/5011424927',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );
}

class AdOpenBook{
  static BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-6532773794891797/9537827444',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );
}


