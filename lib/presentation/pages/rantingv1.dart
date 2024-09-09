import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/presentation/pattern/colors.dart';
import 'package:rating/widget/emoji_widget.dart';

class Rantingv1 extends StatefulWidget {
  const Rantingv1({super.key});

  @override
  State<Rantingv1> createState() => _Rantingv1State();
}

class _Rantingv1State extends State<Rantingv1> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScaffold,
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/image1.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Pizza Ballado",
                  style: GoogleFonts.poppins(
                    color: white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "\$90,00",
                  style: GoogleFonts.poppins(
                    color: white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What it delicious?",
                        style: GoogleFonts.poppins(
                          color: white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyWidget(
                            index: 0,
                            imageUrl: "😡",
                            selectedIndex: selectedIndex,
                            onClick: (index) {
                              setState(
                                () {
                                  selectedIndex = index;
                                },
                              );
                            },
                          ),
                          MyWidget(
                            index: 1,
                            imageUrl: "😔",
                            selectedIndex: selectedIndex,
                            onClick: (index) {
                              setState(
                                () {
                                  selectedIndex = index;
                                },
                              );
                            },
                          ),
                          MyWidget(
                            index: 2,
                            imageUrl: "😁",
                            selectedIndex: selectedIndex,
                            onClick: (index) {
                              setState(
                                () {
                                  selectedIndex = index;
                                },
                              );
                            },
                          ),
                          MyWidget(
                            index: 3,
                            imageUrl: "😍",
                            selectedIndex: selectedIndex,
                            onClick: (index) {
                              setState(
                                () {
                                  selectedIndex = index;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            Container(
              width: 211,
              height: 55,
              decoration: const BoxDecoration(),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: buttonColor,
                ),
                child: Text(
                  "Rote Now",
                  style: GoogleFonts.poppins(
                    color: white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
