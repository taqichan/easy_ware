import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerExplore extends StatelessWidget {
  const BannerExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/banner_main.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.4),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hardware',
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Sebuah komponen fisik\ndalam perangkat elektronik yang menjalankan perintah perangkat lunak untuk menjadikan teknologi berfungsi',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  'Explore Now',
                  style: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.w600),
                )),
              )
            ],
          )),
    );
  }
}
