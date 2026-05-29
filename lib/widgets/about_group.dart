import 'package:flutter/material.dart';

class AboutGroup extends StatelessWidget {
  const AboutGroup({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    // double heightQuery = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.15),
      child: Row(
        children: [
          SizedBox(
            width: widthQuery - widthQuery * 0.15,
            child: Text(
              "I’m a Software Developer focused on testing with hands-on Testing Lead experience across Web, Android, and iOS applications.\n\nMy work focuses on building scalable automation coverage, improving testability, validating releases, and creating QA-oriented tooling that helps teams work faster and more reliably. I have experience with Java, Selenium WebDriver, Appium, ACCELQ, REST API testing, SQL validation, Jira, TestRail, and Jenkins.\n\nI’ve worked across SaaS, fintech/payment, healthcare, and mobile/web product environments, combining automation, manual testing, defect management, and a product-minded QA approach to improve delivery quality.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: widthQuery * 0.010,
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
