// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/route_provider.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import '../config/admob_config.dart';

// /// Reusable banner widget. Place it where you want to show a banner ad.

// class BannerAdWidget extends StatefulWidget {
//   const BannerAdWidget({super.key});

//   @override
//   State<BannerAdWidget> createState() => _BannerAdWidgetState();
// }

// class _BannerAdWidgetState extends State<BannerAdWidget> {
//   BannerAd? _bannerAd;
//   bool _isLoaded = false;

//   @override
//   void initState() {
//     super.initState();

//     _bannerAd = BannerAd(
//       size: AdSize.banner,
//       adUnitId: AdMobConfig.bannerAdUnitId,
//       listener: BannerAdListener(
//         onAdLoaded: (ad) {
//           if (mounted) {
//             setState(() {
//               _isLoaded = true;
//             });
//           }
//         },
//         onAdFailedToLoad: (ad, error) {
//           ad.dispose();
//         },
//       ),
//       request: const AdRequest(),
//     )..load();
//   }

//   @override
//   void dispose() {
//     _bannerAd?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final routeProvider = Provider.of<RouteProvider?>(context);
//     final currentRoute = routeProvider?.currentRoute;
//     final currentUser = FirebaseAuth.instance.currentUser;

//     // Hide banner on login screen: when route is '/' and there's no signed-in user.
//     if (currentRoute == '/' && currentUser == null) {
//       return const SizedBox.shrink();
//     }
//     if (!_isLoaded || _bannerAd == null) {
//       // Reserve the space so the layout doesn't jump. Use zero height if you
//       // prefer no placeholder.
//       return SizedBox(height: AdMobConfig.bannerHeight);
//     }

//     return SizedBox(
//       width: _bannerAd!.size.width.toDouble(),
//       height: _bannerAd!.size.height.toDouble(),
//       child: AdWidget(ad: _bannerAd!),
//     );
//   }
// }
