import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/creating_profile_2.dart';

class LinkingNetworks extends StatelessWidget {
  const LinkingNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 20.h, right: 20.w),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30.h,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(size.width, 110.h),
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.h, left: 24.w),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 3, color: Colors.white)),
                      child: const CircleAvatar(
                          backgroundImage: AssetImage(
                        "assets/logo2.png",
                      )),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 31,
                        width: 31,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Union.png"))),
                        child: Center(
                          child: Image.asset("assets/check.png"),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@NasirBhutta",
                      style: TextStyle(
                          fontSize: 24.h, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Fashion Influencer",
                      style: TextStyle(fontSize: 16.h),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
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
      body: const SubLinkingNetworks(),
    );
  }
}

class SubLinkingNetworks extends StatefulWidget {
  const SubLinkingNetworks({super.key});

  @override
  State<SubLinkingNetworks> createState() => _SubLinkingNetworksState();
}

class _SubLinkingNetworksState extends State<SubLinkingNetworks> {
  final List<List<dynamic>> _list = [
    [
      Image.asset("assets/insta.png"),
      const Text(
        "Instagram",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      false,
      Color.fromARGB(255, 55, 53, 53),
      null
    ],
    [
      Image.asset("assets/tiktok.png"),
      const Text(
        "Tiktok",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      false,
      Color.fromARGB(255, 41, 39, 39)
    ],
    [
      Image.asset("assets/facebook.png"),
      const Text(
        "Facebook",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      false,
      const Color.fromRGBO(24, 119, 242, 1)
    ],
    [
      Image.asset("assets/twitter.png"),
      const Text(
        "Twitter",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      false,
      const Color.fromRGBO(75, 149, 246, 1)
    ],
    [
      Image.asset("assets/youtube.png"),
      const Text(
        "Youtube",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      false,
      const Color.fromARGB(255, 247, 33, 15)
    ],
    [
      Image.asset("assets/snap.png"),
      const Text(
        "Snapchat",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      false,
      const Color.fromARGB(255, 255, 233, 39)
    ],
    [
      Image.asset("assets/twitch.png"),
      const Text(
        "Twitch",
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      false,
      Colors.purple
    ]
  ];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog.adaptive(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Center(child: Text("Social Linking")),
          titleTextStyle:
              TextStyle(fontSize: 28.h, fontWeight: FontWeight.w700),
          content: Text(
            'Almost done! Here is where you link all of the social media you want to sell Shoutouts on! Please note we DO NOT get access to your account or passwords!',
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
                    'Lets Link!',
                    style: GoogleFonts.poppins(fontSize: 16.h),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
              child: Wrap(
                children: List.generate(
                    7,
                    (index) => MyGridItem(
                          list: _list[index],
                          callbackfun: (int index) {
                            setState(() {
                              if (_list[index][2] == false) {
                                _list[index][2] = true;
                                print(index);
                              } else {
                                _list[index][2] = false;
                                print(index);
                              }
                            });
                          },
                          index: index,
                        )),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: SizedBox(
                width: double.infinity,
                height: 67.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color.fromRGBO(41, 179, 254, 1)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreatingProfile2(),
                          ));
                    },
                    child: Text(
                      "Finish Linking",
                      style: GoogleFonts.poppins(
                          fontSize: 17.h, fontWeight: FontWeight.w600),
                    ))),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
                "By continuing, you agree to Shoutsy’s Terms of Service and acknowledge you’ve read our Privacy Policy.",
                style: TextStyle(height: 2, fontSize: 13.h)),
          )
        ],
      ),
    );
  }
}

class MyGridItem extends StatelessWidget {
  final List<dynamic> list;
  Function callbackfun;
  final int index;
  MyGridItem(
      {required this.list, required this.callbackfun, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: GestureDetector(
        onTap: () {
          callbackfun(index);
        },
        child: Container(
          width: 120.w,
          height: 120.h,
          decoration: BoxDecoration(
              color: list[2] == false
                  ? const Color.fromRGBO(196, 196, 196, 1)
                  : list[3],
              gradient: list[2] == true && list.length == 5
                  ? const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                          Color.fromRGBO(158, 38, 146, 1),
                          Color.fromRGBO(250, 169, 88, 1)
                        ])
                  : null,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              list[0],
              SizedBox(
                height: 10.h,
              ),
              list[1]
            ],
          ),
        ),
      ),
    );
  }
}
