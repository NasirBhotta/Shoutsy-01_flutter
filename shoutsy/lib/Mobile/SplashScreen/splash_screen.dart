import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoutsy_1/Mobile/IntroScreens/first_intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double value = 0.0;
  @override
  void initState() {
    super.initState();
    progressValue();
  }

  Future<void> progressValue() async {
    Future.delayed(const Duration(milliseconds: 20), () {
      if (value >= 1.0) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const IntroScreenOne(
                value: "0",
              ),
            ));
      } else {
        value += 0.01;
        setState(() {});
        progressValue();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/background.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0, -0.5),
                  end: Alignment(0, 1),
                  transform: GradientRotation(-1),
                  stops: [
                0.0011,
                0.5,
                1
              ],
                  colors: [
                Color.fromARGB(127, 114, 37, 182),
                Color.fromARGB(176, 41, 179, 254),
                Color.fromARGB(148, 47, 255, 224)
              ])),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 86.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 255, 255, 255),
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
                height: 77.1,
                width: 77.1,
                child: Center(
                  child: Image.asset('assets/Vector.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Shoutsy",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 35.75,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 80,
                    child: LinearProgressIndicator(
                      backgroundColor: const Color.fromARGB(133, 255, 255, 255),
                      value: value,
                      valueColor: const AlwaysStoppedAnimation(Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "Loading...",
                style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(fontSize: 10, color: Colors.white)),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
