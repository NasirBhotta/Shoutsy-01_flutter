import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/creating_profile_2.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/linking_networks.dart';
import 'package:shoutsy_1/Mobile/Influencers/Swipe_Brands/swipe_brands_home.dart';
import 'package:shoutsy_1/Mobile/Influencers/all_set_up.dart';
import 'package:shoutsy_1/Mobile/IntroScreens/first_intro_screen.dart';
import 'package:shoutsy_1/Mobile/SplashScreen/splash_screen.dart';
import 'package:shoutsy_1/Tablet/tablet.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (context) {},
    child: const ShoutsyHome(),
  ));
}

class ShoutsyHome extends StatelessWidget {
  const ShoutsyHome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shoutsy",
        home: LayoutBuilder(
          builder: (context, constraints) {
            if (size.width <= 1280) {
              return const SplashScreen();
            } else {
              return const TabletScreen();
            }
          },
        ),
      ),
    );
  }
}
