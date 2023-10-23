import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/people_detail_screen');
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/monitor.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
