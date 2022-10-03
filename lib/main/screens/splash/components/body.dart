import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/main/constant.dart';
import 'package:e_commerce_ui/main/screens/splash/components/splash_content.dart';
import 'package:e_commerce_ui/main/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "We help people with store \naround United State of America.",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show easy way to shop. \nJust stay at home with us.",
      "image": "assets/images/splash_3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'].toString(),
                  image: splashData[index]['image'].toString(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(
                          index: index,
                        ),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(text: "continue"),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index: 0}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      width: currentPage == index ? 20 : 6,
      height: 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
