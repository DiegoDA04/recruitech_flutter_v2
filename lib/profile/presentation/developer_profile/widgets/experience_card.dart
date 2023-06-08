import 'package:flutter/material.dart';

import '../../../data/models/experience.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.experience});
  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(
        top: 8.0,
      ),
      elevation: 0.35,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
        child: Row(
          children: [
            Image.network(
              experience.urlImage,
              height: 48.0,
            ),
            SizedBox(
              width: 16.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.occupation,
                  style: const TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0C1E38),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  experience.companyName,
                  style: const TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      0xFF716E6E,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
