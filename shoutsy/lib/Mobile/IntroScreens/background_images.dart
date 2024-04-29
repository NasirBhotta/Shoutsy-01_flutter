import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImages extends StatelessWidget {
  const BackgroundImages({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: size.width <= 520 ? 6.w : 5.w,
          child: SizedBox(
            height: size.height,
            width: size.width / 3,
            child: Stack(
              children: [
                Positioned(
                  top: -10,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image.asset(
                      'assets/18.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 70.h : 70,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (70).h : 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/17.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 167.h : 167,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (250).h : 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/16.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 149.h : 149,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (413).h : 413,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/15.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 149.h : 149,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (578).h : 578,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/19.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 141.h : 141,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (735).h : 735,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/11.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 194.h : 194,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                  width: 100,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: size.width <= 520
              ? 142 + (size.width - 414) / 2.9
              : 142 + (size.width - 414) / 3,
          child: SizedBox(
            height: size.height,
            width: size.width / 3,
            child: Stack(
              children: [
                Positioned(
                  top: size.height >= 896 ? (-135 + 40).h : -135 + 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/13.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 193.h : 193,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (70 + 40).h : 70 + 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/12.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 194.h : 194,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (250 + 68).h : 250 + 68,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/8.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 173.h : 173,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (430 + 75).h : 430 + 75,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/7.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 173.h : 173,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (610 + 82).h : 610 + 82,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/14.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 149.h : 149,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (790 + 65).h : 790 + 65,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/10.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 194.h : 194,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                  width: 100,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: size.width <= 520
              ? 280 + (size.width - 414) / 1.4
              : 280 + (size.width - 414) / 1.5,
          child: SizedBox(
            height: size.height,
            width: size.width / 3,
            child: Stack(
              children: [
                Positioned(
                  top: size.height >= 896 ? (-135).h : -135,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/6.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 193.h : 193,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (70).h : 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/5.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 141.h : 141,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (225).h : 225,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/2.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 198.h : 198,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (438).h : 438,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/3.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 197.h : 197,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (650).h : 650,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/4.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 141.h : 141,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height >= 896 ? (805).h : 805,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/11.png',
                      fit: BoxFit.cover,
                      height: size.height >= 896 ? 194.h : 194,
                      width: size.width <= 520
                          ? 125 + (size.width - 413) / 5
                          : 125 + (size.width - 413) / 3,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                  width: 100,
                )
              ],
            ),
          ),
        ),
        Container(
          height: size.height,
          width: size.width,
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
                Color.fromARGB(181, 114, 37, 182),
                Color.fromARGB(208, 41, 179, 254),
                Color.fromARGB(192, 47, 255, 224)
              ])),
        )
      ],
    );
  }
}
