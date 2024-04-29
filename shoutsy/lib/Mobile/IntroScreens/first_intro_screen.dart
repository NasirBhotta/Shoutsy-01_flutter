import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoutsy_1/Mobile/IntroScreens/login.dart';

class IntroScreenOne extends StatefulWidget {
  final String value;
  const IntroScreenOne({super.key, required this.value});

  @override
  State<IntroScreenOne> createState() => _IntroScreenOneState();
}

class _IntroScreenOneState extends State<IntroScreenOne> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
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
                              backGroundImage(
                                  -10, 70, 125, size, 'assets/18.png'),
                              backGroundImage(
                                  70, 167, 125, size, 'assets/17.png'),
                              backGroundImage(
                                  250, 149, 125, size, 'assets/16.png'),
                              backGroundImage(
                                  413, 149, 125, size, 'assets/15.png'),
                              backGroundImage(
                                  578, 141, 125, size, 'assets/19.png'),
                              backGroundImage(
                                  735, 194, 125, size, 'assets/11.png'),
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
                              backGroundImage(
                                  -135, 193, 125, size, 'assets/6.png'),
                              backGroundImage(
                                  70, 141, 125, size, 'assets/5.png'),
                              backGroundImage(
                                  225, 198, 125, size, 'assets/2.png'),
                              backGroundImage(
                                  438, 197, 125, size, 'assets/3.png'),
                              backGroundImage(
                                  650, 141, 125, size, 'assets/4.png'),
                              backGroundImage(
                                  805, 194, 125, size, 'assets/11.png'),
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
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: const Alignment(0, -0.5),
                      end: const Alignment(0, 1),
                      transform: const GradientRotation(-1),
                      stops: const [0.0011, 0.5, 1],
                      colors: widget.value == "2"
                          ? const [
                              Color.fromARGB(119, 114, 37, 182),
                              Color.fromARGB(124, 41, 179, 254),
                              Color.fromARGB(118, 47, 255, 224)
                            ]
                          : const [
                              Color.fromARGB(181, 114, 37, 182),
                              Color.fromARGB(208, 41, 179, 254),
                              Color.fromARGB(192, 47, 255, 224)
                            ],
                    )),
                  ),
                  Visibility(
                    visible: widget.value == "2" ? false : true,
                    child: SingleChildScrollView(
                      child: SizedBox(
                        width: size.width,
                        height: size.height,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 136.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 15.w),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        gradient: const LinearGradient(
                                            begin: Alignment(-0.6, -0.6),
                                            end: Alignment(0, 1),
                                            transform: GradientRotation(-0.5),
                                            stops: [
                                              0.000000000001,
                                              0.5,
                                              0.9
                                            ],
                                            colors: [
                                              Color.fromARGB(255, 114, 37, 182),
                                              Color.fromARGB(240, 41, 179, 254),
                                              Color.fromARGB(240, 47, 255, 224)
                                            ])),
                                    height: 64,
                                    width: 64,
                                    child: Center(
                                      child: Image.asset(
                                        'assets/Vector.png',
                                        height: 45,
                                        width: 45,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Shoutsy",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize:
                                              size.width <= 414 ? 48.w : 50,
                                          color: Colors.white),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height <= 896
                                  ? 140 + (size.height - 896) / 4
                                  : 140,
                            ),
                            Visibility(
                              visible: widget.value == "2" ? false : true,
                              child: Container(
                                padding: const EdgeInsets.only(left: 24),
                                width: size.width,
                                child: Text(
                                  widget.value == "1"
                                      ? "02."
                                      : widget.value == "0"
                                          ? "01."
                                          : "",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize:
                                              size.height >= 670 ? 72.h : 60,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: widget.value == "2" ? false : true,
                              child: Container(
                                padding: const EdgeInsets.only(left: 24),
                                width: size.width,
                                child: Text(
                                  widget.value == "1"
                                      ? "Brand \nCampaigns."
                                      : widget.value == "0"
                                          ? "Get Paid Selling Shoutouts."
                                          : "",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize:
                                              size.height >= 670 ? 40.h : 30,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 24, right: 24),
                              width: size.width,
                              child: Text(
                                widget.value == "1"
                                    ? "Brand's post what they want promoted and influencers apply & get sponsored!"
                                    : widget.value == "0"
                                        ? "Easily create Shoutout Packages for brands to purchase! We also work with agency campaigns!"
                                        : "",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize:
                                            size.height >= 670 ? 17.h : 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (widget.value == "1") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const IntroScreenOne(value: "2"),
                                      ));
                                } else {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const IntroScreenOne(value: "1"),
                                      ));
                                }
                                setState(() {});
                              },
                              child: Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(0, 0, 0, 0.5),
                                          Color.fromRGBO(0, 201, 255, 1),
                                        ])),
                                child:
                                    Image.asset("assets/arrow_forward_ios.png"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Visibility(
                        visible: widget.value == "2" ? true : false,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          height: 380.h,
                          width: size.width,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40.h,
                                ),
                                Text(
                                  "Shoutsy",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 35.76,
                                          fontWeight: FontWeight.w500)),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  width: 200.w,
                                  height: 58.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: ElevatedButton(
                                      style: const ButtonStyle(
                                          elevation:
                                              MaterialStatePropertyAll(0),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color.fromRGBO(
                                                      46, 179, 251, 1))),
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return const LoginScreen();
                                          },
                                        ));
                                      },
                                      child: Center(
                                        child: Text(
                                          "Login",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.98),
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Sign Up",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600)),
                                    )),
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "By continuing,  you agree to Shoutsy's User Agreement and  acknowledge you’ve read our Privacy policy.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                      fontSize: 13,
                                    )),
                                  ),
                                )),
                                SizedBox(
                                  height: 30.h,
                                )
                              ]),
                        ),
                      )),
                  Positioned(
                      bottom: 345.h,
                      child: Visibility(
                        visible: widget.value == "2" ? true : false,
                        child: SizedBox(
                          width: size.width,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      gradient: const LinearGradient(
                                          begin: Alignment(-0.6, -0.6),
                                          end: Alignment(0, 1),
                                          transform: GradientRotation(-0.5),
                                          stops: [
                                            0.000000000001,
                                            0.5,
                                            0.9
                                          ],
                                          colors: [
                                            Color.fromARGB(255, 114, 37, 182),
                                            Color.fromARGB(240, 41, 179, 254),
                                            Color.fromARGB(240, 47, 255, 224)
                                          ])),
                                  height: 64,
                                  width: 64,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/Vector.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      )),
                  SizedBox(
                    height: size.height,
                  )
                ],
              ),
            ),
          ]),
    );
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
