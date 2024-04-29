import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SubForgotPassword());
  }
}

class SubForgotPassword extends StatefulWidget {
  const SubForgotPassword({super.key});

  @override
  State<SubForgotPassword> createState() => _SubForgotPasswordState();
}

class _SubForgotPasswordState extends State<SubForgotPassword> {
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
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 32.h,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Let's reset it together!",
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
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            "Reset Your Password",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 30.h,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                          child: Text(
                            "Enter your email and we will send instructions on how to reset it. Get started below.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(fontSize: 15.h)),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        SizedBox(
                          width: size.width,
                          child: Text(
                            "Account Email",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 20.h,
                                    fontWeight: FontWeight.w700)),
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
                                contentPadding: const EdgeInsets.only(left: 25),
                                border: const OutlineInputBorder(),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    fontSize: 18.h,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          height: 78.h,
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
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "Reset Password",
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
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Need more Help?",
                                style: TextStyle(
                                    color:
                                        const Color.fromRGBO(41, 179, 254, 1),
                                    fontSize: 17.h),
                              )),
                        )
                      ],
                    )),
              ),
            )),
      ],
    );
  }
}
