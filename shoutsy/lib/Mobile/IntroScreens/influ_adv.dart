import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoutsy_1/Mobile/Influencers/CreatinProfiles/creating_profile_1.dart';

class AdvOrInflu extends StatelessWidget {
  const AdvOrInflu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.white),
      appBar: AppBar(
        toolbarHeight: 100.h,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
          child: Center(
            child: Text(
              "Choose Role",
              style: TextStyle(fontSize: 24.h),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: ChooseRole(),
    );
  }
}

class ChooseRole extends StatelessWidget {
  const ChooseRole({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Container(
            height: 294.dg,
            width: 320.dg,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/influback.png",
              ),
              fit: BoxFit.cover,
            )),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.dg),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(146, 254, 157, 0.604),
                    Color.fromRGBO(0, 200, 255, 0.569)
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.dg,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Text(
                      "I’M AN INFLUENCER",
                      style: TextStyle(fontSize: 24.dg, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20.dg,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Text(
                      "I want to sell shoutouts to brands and get paid sponsorships. I also want to apply to promotional oppertunities!",
                      style: TextStyle(fontSize: 16.dg, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 50.dg,
                  ),
                  Center(
                    child: SizedBox(
                      width: 152.w,
                      height: 54.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CreatingProfile1(),
                                ));
                          },
                          child: Center(
                            child: Text(
                              "Select",
                              style: TextStyle(
                                  fontSize: 16.dg, fontWeight: FontWeight.w600),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            height: 294.dg,
            width: 320.dg,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.dg),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x000000).withOpacity(1),
                    offset: Offset(0, 0),
                    blurRadius: 23,
                    spreadRadius: -10,
                  ),
                ],
                image: DecorationImage(
                  scale: 0.9,
                  image: AssetImage(
                    "assets/advback.png",
                  ),
                  fit: BoxFit.cover,
                )),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.dg),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(184, 63, 250, 0.604),
                    Color.fromRGBO(41, 179, 254, 0.569)
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.dg,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Text(
                      "I’M AN ADVERTISER",
                      style: TextStyle(fontSize: 24.dg, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20.dg,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Text(
                      "I want to hire influencers to promote me, my business or a client.  I also want to post campaigns for influencers to apply to!",
                      style: TextStyle(fontSize: 16.dg, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 50.dg,
                  ),
                  Center(
                    child: SizedBox(
                      width: 152.w,
                      height: 54.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "Select",
                              style: TextStyle(
                                  fontSize: 16.dg, fontWeight: FontWeight.w600),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
