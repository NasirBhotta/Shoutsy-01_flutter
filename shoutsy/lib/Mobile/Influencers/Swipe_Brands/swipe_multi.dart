import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SwipeMulti extends StatelessWidget {
  final String topLeftTitle;
  final String rightString1;
  final String rightString2;
  final String rightString3;
  final String rightImage;
  final String logoImage;
  final String logoTitle;
  final String logoSubTitle;
  final String desc;
  final String backgroundImg;
  final PageController pageController;

  const SwipeMulti(
      {super.key,
      required this.topLeftTitle,
      required this.rightString1,
      required this.rightString2,
      required this.rightString3,
      required this.rightImage,
      required this.logoImage,
      required this.logoTitle,
      required this.logoSubTitle,
      required this.desc,
      required this.backgroundImg,
      required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          backgroundImg,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Image.asset(logoImage),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            logoTitle,
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 24.h),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            logoSubTitle,
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
                    desc,
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 18.h),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(
                                    top: 20,
                                    bottom: 20,
                                    left: 25.w,
                                    right: 25.w)),
                            onPressed: () {
                              _showModalBottomSheet(context);
                            },
                            child: Text(
                              "Start Applying",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.h, fontWeight: FontWeight.w600),
                            )),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                padding: EdgeInsets.only(
                                    top: 20,
                                    bottom: 20,
                                    left: 25.w,
                                    right: 25.w)),
                            onPressed: () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear);
                            },
                            child: Text(
                              "Not Interested",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.h, fontWeight: FontWeight.w600),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  )
                ],
              ),
            )),
        Positioned(
          top: 50.h,
          left: 20.w,
          child: Container(
              height: 40.h,
              width: 180.w,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  topLeftTitle,
                  style: GoogleFonts.roboto(
                      fontSize: 16.h, fontWeight: FontWeight.w600),
                ),
              )),
        ),
        Positioned(
            right: 0,
            child: Container(
              height: 385.h,
              width: 135.w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      transform: GradientRotation(1.5),
                      colors: [
                        Color.fromRGBO(49, 16, 35, 0.482),
                        Color.fromRGBO(0, 0, 0, 0.732)
                      ]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(children: [
                SizedBox(
                  height: 40.h,
                ),
                Image.asset("box.png"),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  rightString1,
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.roboto(fontSize: 16.h, color: Colors.white),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Image.asset("clock.png"),
                SizedBox(
                  height: 5.h,
                ),
                Text(rightString2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 16.h, color: Colors.white)),
                SizedBox(
                  height: 40.h,
                ),
                Image.asset(rightImage),
                SizedBox(
                  height: 5.h,
                ),
                Text(rightString3,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 16.h, color: Colors.white)),
              ]),
            ))
      ],
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 200,
              color: Colors.white,
              child: Center(
                child: Text(
                  'This is a Modal Bottom Sheet',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ));
  }
}
