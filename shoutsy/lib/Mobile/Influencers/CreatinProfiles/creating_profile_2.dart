import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/form.dart';
import 'package:shoutsy_1/Mobile/Influencers/all_set_up.dart';

class CreatingProfile2 extends StatefulWidget {
  const CreatingProfile2({super.key});

  @override
  State<CreatingProfile2> createState() => _CreatingProfile2State();
}

class _CreatingProfile2State extends State<CreatingProfile2> {
  get keyListView => null;

  get form1Key => null;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        barrierDismissible: true,
        context: context,
        useSafeArea: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            titleTextStyle:
                TextStyle(fontSize: 32.h, fontWeight: FontWeight.w700),
            title: const Center(
                child: Text(
              'Important!',
            )),
            content: Text(
              'Please note that providing accurate information when creating your account and is important for brands before they buy a promotion off of you!',
              style: TextStyle(color: Colors.grey, fontSize: 14.h),
              textAlign: TextAlign.center,
            ),
            actions: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(41, 179, 254, 1),
                        padding: EdgeInsets.only(
                            left: 40.w, right: 40.w, top: 20.h, bottom: 20.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Sounds Cool!',
                      style: GoogleFonts.poppins(fontSize: 16.h),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Your Shoutout Prices",
          style: TextStyle(fontSize: 24.h, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new))
        ],
        toolbarHeight: 100.h,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  transform: GradientRotation(1),
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromRGBO(146, 254, 157, 1),
                Color.fromRGBO(1, 201, 254, 1)
              ])),
        ),
      ),
      body: ListView(key: keyListView, children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 35, top: 32),
          child: Form(
              key: form1Key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Text(
                      //   "Account",
                      //   style: TextStyle(
                      //       fontSize: 24.h,
                      //       color: const Color.fromRGBO(0, 201, 255, 1),
                      //       fontWeight: FontWeight.w600),
                      // ),
                      Image.asset(
                        "assets/instatext.png",
                        width: 261.w,
                        height: 24.h,
                      ),
                      Image.asset(
                        "assets/insta2.png",
                        width: 26.w,
                        height: 26.h,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Feed Post",
                      style: TextStyle(
                          fontSize: 20.h,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Permanent Post",
                      style: TextStyle(
                        fontSize: 15.h,
                        color: const Color.fromARGB(255, 158, 158, 158),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const FieldForm(lableText: "\$0.00"),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Story Post",
                      style: TextStyle(
                          fontSize: 20.h,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "24 Hour Post",
                      style: TextStyle(
                        fontSize: 15.h,
                        color: Color.fromARGB(255, 158, 158, 158),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const FieldForm(lableText: "\$0.00"),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          "Cariousal Post",
                          style: TextStyle(
                              fontSize: 20.h,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        const Tooltip(
                          message:
                              "An Instagram Feed refers to the main photos or videos a user will post to their Instagram, and it will appear in the feed of their followers.",
                          child: Text("data"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Permanent Post (5 Day Delivery)",
                      style: TextStyle(
                        fontSize: 15.h,
                        color: Color.fromARGB(255, 158, 158, 158),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const FieldForm(lableText: "\$0.00"),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Reel Post",
                      style: TextStyle(
                          fontSize: 20.h,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Permanent Post (5 Day Delivery)",
                      style: TextStyle(
                        fontSize: 15.h,
                        color: Color.fromARGB(255, 158, 158, 158),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const FieldForm(lableText: "\$0.00"),
                ],
              )),
        ),
        SizedBox(
          height: 40.h,
        ),
        const Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "TikTok QuickShout's",
                    style: TextStyle(
                        fontSize: 24.h,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    "assets/tiktok2.png",
                    width: 26.w,
                    height: 26.h,
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Feed Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Permanent Post (5 Day Delivery)",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Music Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Permanent Post (5 Day Delivery)",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        const Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Twitter QuickShout’s",
                    style: TextStyle(
                        fontSize: 24.h,
                        color: const Color.fromRGBO(0, 201, 255, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    "assets/twitter2.png",
                    width: 26.w,
                    height: 26.h,
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Feed Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Permanent Post",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Story Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "24 Hour Post",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text(
                    "Facebook QuickShout’s",
                    style: TextStyle(
                        fontSize: 24.h,
                        color: Color.fromARGB(255, 0, 106, 255),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    "assets/facebook2.png",
                    width: 26.w,
                    height: 26.h,
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Feed Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Permanent Post",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Story Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "24 Hour Post",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Reel Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "24 Hour Post",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text(
                    "Youtube QuickShout’s",
                    style: TextStyle(
                        fontSize: 24.h,
                        color: Color.fromARGB(255, 255, 13, 0),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    "assets/youtube2.png",
                    width: 26.w,
                    height: 26.h,
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Video Sponsorship",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Permanent Upload (5 Day Delivery)",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Short Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Includes Mention/ URL (5 Day Delivery)",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text(
                    "Snapchat QuickShout’s",
                    style: TextStyle(
                        fontSize: 24.h,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    "assets/snap2.png",
                    width: 26.w,
                    height: 26.h,
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Story Post",
                  style: TextStyle(
                      fontSize: 20.h,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Includes Mention/ URL (5 Day Delivery)",
                  style: TextStyle(
                    fontSize: 15.h,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 16.h,
              ),
              const FieldForm(lableText: "\$0.00"),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 67.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreatingProfile3(),
                            ));
                      },
                      child: Text(
                        "Next Step",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ))),
            ],
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
      ]),
    );
  }
}
