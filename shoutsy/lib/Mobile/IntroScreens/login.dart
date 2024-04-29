import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoutsy_1/Mobile/IntroScreens/forgot.dart';
import 'package:shoutsy_1/Mobile/IntroScreens/influ_adv.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SubLoginScreen());
  }
}

class SubLoginScreen extends StatefulWidget {
  const SubLoginScreen({super.key});

  @override
  State<SubLoginScreen> createState() => _SubLoginScreenState();
}

class _SubLoginScreenState extends State<SubLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
            top: 0,
            child: Image.asset(
              'assets/Loginbackground.png',
              height: 442,
              width: size.width,
              fit: BoxFit.cover,
            )),
        Positioned(
            top: 0,
            child: Container(
              height: 442,
              width: size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color.fromRGBO(158, 38, 146, 0.584),
                    Color.fromRGBO(250, 169, 88, 0.589)
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Welcome back",
                          style: TextStyle(
                              fontSize: 32.h,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Sign in to continue!",
                            style: TextStyle(
                              fontSize: 17.h,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: ((896 - size.height) / 2.2) + 65,
                      )
                    ],
                  ))
                ],
              ),
            )),
        Positioned(
            bottom: 0,
            child: Container(
              height: 500.h,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
                child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width,
                          child: Text(
                            "Email",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 18.h,
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 56.h,
                          child: TextFormField(
                            cursorHeight: 25.h,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 25),
                                border: OutlineInputBorder(),
                                labelText: "Enter Email",
                                labelStyle: TextStyle(
                                    fontSize: 18.h,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        SizedBox(
                          width: size.width,
                          child: Text(
                            "Password",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontSize: 20.h,
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 56.h,
                          child: TextFormField(
                            obscureText: true,
                            cursorHeight: 25.h,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 25),
                                border: OutlineInputBorder(),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    fontSize: 18.h,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ForgotPassword(),
                                    ));
                              },
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                    color: Color.fromRGBO(41, 179, 254, 1),
                                    fontSize: 17.h),
                              )),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Center(
                          child: Container(
                            width: 200.w,
                            height: 58.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                    elevation: MaterialStatePropertyAll(0),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromRGBO(46, 179, 251, 1))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AdvOrInflu(),
                                      ));
                                },
                                child: Center(
                                  child: Text(
                                    "Login",
                                    textAlign: TextAlign.center,
                                    style:
                                        GoogleFonts.poppins(fontSize: 20.98.h),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Center(
                            child: Text(
                          "Don't have an account? Sign up",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16.h),
                          textAlign: TextAlign.center,
                        ))
                      ],
                    )),
              ),
            )),
      ],
    );
  }
}
