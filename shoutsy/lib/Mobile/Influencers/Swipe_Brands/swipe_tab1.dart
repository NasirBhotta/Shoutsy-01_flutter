import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoutsy_1/Mobile/Influencers/Swipe_Brands/swipe_multi.dart';

class SwipeTab1 extends StatelessWidget {
  final PageController _pageController = PageController();
  SwipeTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: [
        Stack(
          children: [
            Image.asset(
              "image1.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset("logo.png"),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shoutsy",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24.h),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Influencer Marketing",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white, fontSize: 18.h),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Text(
                            "Welcome to Shoutsy! You can start swiping and applying to paid sponsorships!",
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 18.h),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.only(top: 20, bottom: 20)),
                                onPressed: () {
                                  _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                },
                                child: Text(
                                  "Start Applying",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.h,
                                      fontWeight: FontWeight.w600),
                                )),
                          ),
                          const SizedBox(
                            height: 45,
                          )
                        ],
                      ),
                    ))),
          ],
        ),
        SwipeMulti(
          topLeftTitle: 'Affilliate Compaign',
          backgroundImg: 'image2.png',
          logoImage: 'gucci.png',
          logoTitle: "Gucci",
          logoSubTitle: "Fashion",
          desc:
              "We’re looking for fashion influencers to promote our newest product drop. We’ll provide custom links and pay 50% commision!",
          rightString1: "50% Commision",
          rightString2: "Deliver Date: Whenever",
          rightString3: "Cariousel Post",
          rightImage: "insta3.png",
          pageController: _pageController,
        ),
        SwipeMulti(
          topLeftTitle: 'Product Exchange',
          backgroundImg: 'image3.png',
          logoImage: 'nike.png',
          logoTitle: "Nike",
          logoSubTitle: "Fashion",
          desc:
              "We’re wanting a total of 50 fitness influencers. Not strict on follower count. just send us an offer!",
          rightString1: "50% Commision",
          rightString2: "Deliver Date: Whenever",
          rightString3: "Story Post",
          rightImage: "snap3.png",
          pageController: _pageController,
        ),
        SwipeMulti(
          topLeftTitle: 'Cash Compaign',
          backgroundImg: 'image4.png',
          logoImage: 'louis.png',
          logoTitle: "Louis",
          logoSubTitle: "Fashion",
          desc: "We need female beauty instagram bloggers!",
          rightString1: "5,000\$ Payout",
          rightString2: "Deliver Date: Within 5 days",
          rightString3: "Video Sponsor Post",
          rightImage: "youtube3.png",
          pageController: _pageController,
        ),
        Stack(
          children: [
            Image.asset(
              "image5.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "No More Oppertunities",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 32.h,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "It appears you’ve interacted with all of the current posted brand campaigns. \n \n Come back later for more deals!",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 18.h),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Image.asset("logo.png"),
                  SizedBox(
                    height: 54.h,
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
