import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = widthQuery * 0.04;

    return Column(
      children: [
        Transform.translate(
          offset: const Offset(0, 5),
          child: SizedBox(
            height: heightQuery * 0.2,
            width: widthQuery,
            child: CustomPaint(
              painter: WhiteFlagUpMobile(),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: heightQuery * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -5),
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: widthQuery * 0.26,
                      ),
                    ),
                    SizedBox(
                      width: widthQuery * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'About\nMe',
                          style: TextStyle(
                              height: heightQuery * 0.0012,
                              fontFamily: 'poppinsbold',
                              color: Colors.black,
                              fontSize: widthQuery * 0.155),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: heightQuery * 0.01),
                SizedBox(
                  width: widthQuery,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'poppinslight',
                        fontSize: fontSize,
                      ),
                      children: [
                        const TextSpan(text: 'As an aspiring '),
                        TextSpan(
                          text: 'backend software developer',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(text: ', I have a deep passion for '),
                        TextSpan(
                          text: 'Java development',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(
                            text:
                                ', constantly refining my skills and knowledge through continuous learning. I am dedicated to mastering '),
                        TextSpan(
                          text: 'object-oriented programming',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(
                            text:
                                ' and can efficiently work with other languages like '),
                        TextSpan(
                          text: 'Dart',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(text: ', '),
                        TextSpan(
                          text: 'HTML',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: 'CSS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(
                            text: '.\n\nI also love frameworks like '),
                        TextSpan(
                          text: 'Spring Boot',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(text: ', '),
                        TextSpan(
                          text: 'Flutter',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(text: ', '),
                        TextSpan(
                          text: 'Hibernate',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(text: ', and '),
                        TextSpan(
                          text: 'JavaFX',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(
                            text:
                                ', which allow me to contribute to a wide range of projects that fuel my enthusiasm. I’ve developed '),
                        TextSpan(
                          text: 'RESTful APIs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(text: ' with '),
                        TextSpan(
                          text: 'CRUD',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(
                            text:
                                ' operations and established reliable database connections. Additionally, I’m proficient in using dependency managers like '),
                        TextSpan(
                          text: 'Maven',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Gradle',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(
                            text:
                                ' to ensure efficient project management and organization.\n\nBeyond my technical expertise, I have strong '),
                        TextSpan(
                          text: 'communication',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: fontSize),
                        ),
                        const TextSpan(
                            text:
                                ' skills enabling seamless collaboration within teams. I quickly adapt to new languages and tools, allowing me to contribute effectively to diverse projects. My passion for design extends beyond visuals, I approach design from a broader and more abstract perspective, striving to structure and solve problems methodically. By considering every detail and organizing each step carefully, I ensure that projects progress as smoothly and successfully as possible.'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: heightQuery * 0.04,
                ),
                const CustomAnimatedButton(),
                SizedBox(
                  height: heightQuery * 0.04,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -5),
          child: SizedBox(
            height: heightQuery * 0.2,
            width: widthQuery,
            child: CustomPaint(
              painter: WhiteFlagDownMobile(),
            ),
          ),
        ),
      ],
    );
  }
}
