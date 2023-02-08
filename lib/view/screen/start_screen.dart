import 'package:chefio1/view/screen/sign_in_screen.dart';
import 'package:chefio1/view/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:chefio1/view/screen/home_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/imges/Onboarding.png",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sàn đầu tư nông sản",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 220,
                      child: Text(
                        "Cùng nhau nâng tầm nông sản Việt",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    CustomButton(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                            (route) => false);
                      },
                      text: "Bản thử nghiệm",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
