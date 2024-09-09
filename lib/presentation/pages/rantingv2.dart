import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/widget/stars_widget.dart';

class Rantingv2 extends StatefulWidget {
  const Rantingv2({super.key});

  @override
  State<Rantingv2> createState() => _Rantingv2State();
}

class _Rantingv2State extends State<Rantingv2> {
  List<int> selectedIndex = []; // Daftar untuk menyimpan bintang yang terpilih
  final TextEditingController _messageController = TextEditingController();

  void _handleStarClick(int index) {
    setState(() {
      if (selectedIndex.contains(index)) {
        // Jika bintang sudah terpilih, hapus bintang dari index ke kanan
        selectedIndex = selectedIndex.where((i) => i <= index).toList();
      } else {
        // Jika bintang belum terpilih, tambahkan bintang dari index ke kiri
        selectedIndex = List.generate(index + 1, (i) => i);
      }
    });
  }

  @override
  void dispose() {
    _messageController.dispose(); // Dispose controller saat widget dihapus
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (index) {
                    return StarsWidget(
                      index: index,
                      imagesUrl: "assets/icons/star2.png",
                      selectedIndex: selectedIndex,
                      onclick:
                          _handleStarClick, // Menggunakan callback yang benar
                    );
                  }),
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
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your Message',
                        hintStyle: GoogleFonts.poppins(
                          color: const Color(0xFF808EAB),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      maxLines: null, // Agar bisa multiline
                      keyboardType: TextInputType.multiline,
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
                    onPressed: () {
                      // Logika untuk submit review dan teks yang diinputkan
                      print('Review: ${_messageController.text}');
                    },
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
      ),
    );
  }
}
