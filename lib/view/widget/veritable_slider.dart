import 'package:chefio1/constans/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VeritableSlider extends StatefulWidget {
  const VeritableSlider({Key? key}) : super(key: key);

  @override
  State<VeritableSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<VeritableSlider> {
  double slider = 30;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Giá tiền theo mùa vụ",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "( VND )",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "< 10.000",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: primary),
                  ),
                  Text(
                    "30.000",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: primary),
                  ),
                  Text(
                    "> 50.000",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: primary),
                  ),
                ],
              ),
            ),
            Slider(
                divisions: 2,
                activeColor: primary,
                thumbColor: primary,
                max: 60,
                min: 10,
                value: slider,
                onChanged: (value) {
                  setState(() {
                    slider = value;
                  });
                })
          ],
        )
      ],
    );
  }
}
