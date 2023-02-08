import 'dart:ui';

import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/screen/taps/profile_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconly/iconly.dart';

class BlogDetailScreen extends StatelessWidget {
  const BlogDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/imges/Food Picture.png"),
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
                    "Nông sản sạch - Xu hướng đầu tư 2023",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "30 phút",
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
                              AssetImage("assets/imges/Avatar3.png"),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "LeMinh",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: primary,
                        child: Icon(
                          IconlyLight.heart,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "273",
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
                    "Nội dung",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định.\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định.\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định\n        Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: SecondaryText),
                  ),
                  
                ],
              ),
            ),
          );
        });
  }
}
