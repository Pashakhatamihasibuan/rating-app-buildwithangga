import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rantingv2 extends StatelessWidget {
  const Rantingv2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 28,
            right: 28,
          ),
          child: Column(
            children: [
              Image.asset(
                "assets/images/home-office.png",
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Enjoy Your Meal",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF121622),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "Please rate our experience",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF808EAB),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/star1.png",
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/star1.png",
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/star1.png",
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/star2.png",
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/star2.png",
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              Container(
                width: 319,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color(0xFFF8F8f8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                  ),
                  child: Text(
                    "Your Message",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF808EAB),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 319,
                height: 55,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF4074E6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      )),
                  child: Text(
                    "Submit Review",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
