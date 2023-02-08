import 'package:chefio1/view/screen/search_Screen.dart';
import 'package:chefio1/view/screen/veritable_search.dart';

import 'package:chefio1/view/widget/custom_Text_Form_fild.dart';
import 'package:chefio1/view/widget/veritable_categories.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:chefio1/view/widget/custom_button.dart';
import 'package:chefio1/view/screen/veritable_detail.dart';
import 'package:chefio1/view/screen/taps/profile_tap.dart';

import '../../widget/Custom_product_Item_widget.dart';
import '../../widget/custom_binary_option.dart';

import 'package:chefio1/view/screen/taps/veritable_upload.dart';

class VeritableTab extends StatelessWidget {
  const VeritableTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VeritableSearchScreen()),
                  );
                },
                child: CostomTextFormFild(
                  hint: "Tìm kiếm",
                  prefixIcon: IconlyLight.search,
                  filled: true,
                  enabled: false,
                ),
              ),
              const VeritableCategoriesList(),
              const SizedBox(
                height: 8,
              ),
              const Divider(),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Các loại nông sản",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VeritableUpload()));
                    },
                    child: const Text("Tạo mới",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              buildImageInteractionCard(context),
              buildImageInteractionCard(context),
            ],
          ),
        )
      ],
    ));
  }

  Widget buildImageInteractionCard(context) => GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => const BlogDetailScreen()));
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                    image: const NetworkImage(
                      "https://media.istockphoto.com/id/834807852/photo/whole-kiwi-fruit-and-half-kiwi-fruit-on-white.jpg?s=612x612&w=0&k=20&c=zliUVnZlYPcOxEDYef7PMmOEEODFr8FUkTYqqFVaRG8=",
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                    child: const InkWell(),
                  ),
                  const Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      'Kiwi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        backgroundColor: Colors.black87,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 12,
                        ),
                        Text(
                          " Cà phê Robusta",
                          style: TextStyle(fontSize: 16),
                        )
                      ]),
                      Row(children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 12,
                        ),
                        Text(
                          " 11/01/2022",
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                      Row(children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 12,
                        ),
                        Text(
                          " 2 tấn",
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                      const Text(
                        "Quả kiwi hay quả lý gai Trung Quốc là quả mọng ăn được của một số loài dây leo thân gỗ trong chi Actinidia",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            child: const Text('Xem chi tiết'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const VeritableDetailScreen()));
                            },
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            children: const[
                              Text("20.000 VND")
                            ],
                          )),
                    ],
                  )),
            ],
          ),
        ),
      );
}
