import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoutsy_1/Mobile/Influencers/Swipe_Brands/swipe_brands_home.dart';

class CreatingProfile3 extends StatefulWidget {
  const CreatingProfile3({super.key});

  @override
  State<CreatingProfile3> createState() => _CreatingProfile3State();
}

class _CreatingProfile3State extends State<CreatingProfile3> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Stack(children: [
              Row(
                children: [
                  SizedBox(
                    width: size.width <= 410
                        ? 5.w
                        : size.width >= 521
                            ? 6.w
                            : 11.w,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: size.height,
                      child: Stack(
                        children: [
                          backGroundImage(-10, 70, 125, size, 'assets/18.png'),
                          backGroundImage(70, 167, 125, size, 'assets/17.png'),
                          backGroundImage(250, 149, 125, size, 'assets/16.png'),
                          backGroundImage(413, 149, 125, size, 'assets/15.png'),
                          backGroundImage(578, 141, 125, size, 'assets/19.png'),
                          backGroundImage(735, 194, 125, size, 'assets/11.png'),
                          const SizedBox(
                            height: 100,
                            width: 100,
                          )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    child: SizedBox(
                      height: size.height,
                      child: Stack(
                        children: [
                          backGroundImage(
                              -135 + 40, 193, 125, size, 'assets/13.png'),
                          backGroundImage(
                              70 + 40, 194, 125, size, 'assets/12.png'),
                          backGroundImage(
                              250 + 68, 173, 125, size, 'assets/8.png'),
                          backGroundImage(
                              435 + 70, 173, 125, size, 'assets/7.png'),
                          backGroundImage(
                              610 + 88, 149, 125, size, 'assets/14.png'),
                          backGroundImage(
                              790 + 70, 194, 125, size, 'assets/10.png'),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    child: SizedBox(
                      height: size.height,
                      child: Stack(
                        children: [
                          backGroundImage(-135, 193, 125, size, 'assets/6.png'),
                          backGroundImage(70, 141, 125, size, 'assets/5.png'),
                          backGroundImage(225, 198, 125, size, 'assets/2.png'),
                          backGroundImage(438, 197, 125, size, 'assets/3.png'),
                          backGroundImage(650, 141, 125, size, 'assets/4.png'),
                          backGroundImage(805, 194, 125, size, 'assets/11.png'),
                          const SizedBox(
                            height: 100,
                            width: 100,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, -1.5),
                        end: Alignment(0, 1),
                        transform: GradientRotation(-1.4),
                        colors: [
                      Color.fromRGBO(131, 255, 143, 0.923),
                      Color.fromRGBO(0, 200, 255, 0.894),
                    ])),
              ),
              SizedBox(
                width: double.infinity,
                height: size.height,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100.h,
                    ),
                    Image.asset("bell.png"),
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Don’t miss out on collabs or Brand Deals!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontSize: 32.h,
                          shadows: [
                            BoxShadow(
                              color: const Color(0xFF000000).withOpacity(0.27),
                              offset: const Offset(0, 12),
                              blurRadius: 16,
                              spreadRadius: 0,
                            ),
                          ],
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "We reccomend turning on notifacations so you don't miss out on collaborations or brand deals!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 17.h,
                              shadows: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.27),
                                  offset: const Offset(0, 12),
                                  blurRadius: 16,
                                  spreadRadius: 0,
                                ),
                              ],
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        width: double.infinity,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Turn on notifications",
                                style: GoogleFonts.roboto(
                                  fontSize: 17.h,
                                  shadows: [
                                    BoxShadow(
                                      color: const Color(0xFF000000)
                                          .withOpacity(0.27),
                                      offset: const Offset(0, 12),
                                      blurRadius: 16,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              CupertinoSwitch(
                                value: _value,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  if (_value == false) {
                                    _value = true;
                                  } else {
                                    _value = false;
                                  }
                                  setState(() {});
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SwipeBrands(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left: 60.w,
                                right: 60.w,
                                top: 25.h,
                                bottom: 25.h)),
                        child: Text(
                          "Finish",
                          style: GoogleFonts.poppins(
                              fontSize: 20.h, fontWeight: FontWeight.w500),
                        )),
                    SizedBox(
                      height: 70.h,
                    ),
                  ],
                ),
              )
            ])));
  }

  Widget backGroundImage(double imgContHeight, double imgHeigth, int imgWidth,
      Size viewportSize, String img) {
    return Positioned(
      top: viewportSize.height >= 896 ? (imgContHeight).h : imgContHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          img,
          fit: BoxFit.cover,
          height: viewportSize.height >= 896 ? imgHeigth.h : imgHeigth,
          width: viewportSize.width <= 520
              ? 125 + (viewportSize.width - 413) / 5
              : 125 + (viewportSize.width - 413) / 3,
        ),
      ),
    );
  }
}
