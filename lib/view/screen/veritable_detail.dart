import 'dart:ui';

import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/screen/taps/profile_tap.dart';
import 'package:chefio1/view/screen/taps/upload_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconly/iconly.dart';
import 'package:chefio1/view/widget/custom_button.dart';

class VeritableDetailScreen extends StatelessWidget {
  const VeritableDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/imges/Onboarding.png"),
          ),
          buttonArrow(context),
          scroll(),
        ],
      ),
    ));
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Kiwi",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "C?? ph?? Robusta",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: SecondaryText),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProfileTap(showFollowBottomInProfile: true),
                              ));
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage("assets/imges/Avatar.png"),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Cao Lanh, Dong Thap",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      ),
                      const Spacer(),
                      Text(
                        "20.000VND",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    "M?? t??? chi ti???t",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "2 t???n",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: SecondaryText),
                  ),
                  Text(
                    "Thu ho???ch l??c 11/01/2022",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: SecondaryText),
                  ),
                  Text(
                    "Qu??? kiwi hay qu??? l?? gai Trung Qu???c l?? qu??? m???ng ??n ???????c c???a m???t s??? lo??i d??y leo th??n g??? trong chi Actinidia",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: SecondaryText),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    "L???i th??? c???nh tranh",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ingredients(context, "R???"),
                  ingredients(context, "Thu ho???ch s???m"),
                  ingredients(context, "L???i nhu???n cao"),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    "C??c th???i ??i???m thu ho???ch",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) => steps(context, index),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        text: "H???y",
                        color: form,
                        textColor: mainText,
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UploadTap(),
                              ));
                        },
                        text: "?????u t??",
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  ingredients(BuildContext context, String whyGood) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFFE3FFF8),
            child: Icon(
              Icons.done,
              size: 15,
              color: primary,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            whyGood,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }

  steps(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: mainText,
            radius: 12,
            child: Text("${index + 1}"),
          ),
          Column(
            children: [
              Image.asset(
                "assets/imges/Rectangle 219.png",
                height: 155,
                width: 270,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 270,
                child: Text(
                  "Thang 10",
                  maxLines: 3,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: mainText),
                ),
              ),
              SizedBox(
                width: 270,
                child: Text(
                  "Tui code s?? s?? ?? do h???i l??u m?? ???????c html css ???????c t???m 1 tu???n r",
                  maxLines: 3,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: mainText),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
