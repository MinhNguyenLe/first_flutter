import 'dart:ui';

import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/screen/product_item_screen.dart';
import 'package:chefio1/view/screen/taps/profile_tap.dart';
import 'package:chefio1/view/screen/veritable_detail.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomProductItemWidget extends StatefulWidget {
  CustomProductItemWidget({Key? key, this.name = "", this.price = ""})
      : super(key: key);
  String name;
  String price;

  @override
  State<CustomProductItemWidget> createState() =>
      _CustomProductItemWidgetState();
}

class _CustomProductItemWidgetState extends State<CustomProductItemWidget> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 265,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(),

          Stack(
            children: [
              // Product image
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VeritableDetailScreen()));
                    },
                    child: Image.asset(
                      "assets/imges/Rectangle 188.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          favorite = !favorite;
                        });
                      },
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white.withOpacity(0.10),
                              ),
                              child: Center(
                                child: favorite == false
                                    ? const Icon(
                                        IconlyBroken.heart,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        IconlyBold.heart,
                                        color: Colors.red,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // producte name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.name,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.price,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: SecondaryText),
            ),
          ),
        ],
      ),
    );
  }
}
