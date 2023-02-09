import 'package:chefio1/view/screen/search_Screen.dart';
import 'package:chefio1/view/widget/custom_Text_Form_fild.dart';
import 'package:chefio1/view/widget/custom_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:chefio1/view/widget/custom_button.dart';
import 'package:chefio1/view/screen/blog_detail.dart';
import 'package:chefio1/view/screen/taps/author_profile.dart';

import '../../widget/Custom_product_Item_widget.dart';
import '../../widget/custom_binary_option.dart';

import 'package:chefio1/view/screen/taps/upload_blog.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({Key? key}) : super(key: key);

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
                        builder: (context) => const SearchScreen()),
                  );
                },
                child: CostomTextFormFild(
                  hint: "Tìm kiếm",
                  prefixIcon: IconlyLight.search,
                  filled: true,
                  enabled: false,
                ),
              ),
              const CustomCategoriesList(),
              const SizedBox(
                height: 8,
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 12, top: 25),
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildAvatar('Minh', 'mia', context),
                    buildAvatar('Thi', 'adam', context),
                    buildAvatar('Khoa', 'jess', context),
                    buildAvatar('Minh', 'mike', context),
                    buildAvatar('Thi', 'brandon', context),
                    buildAvatar('Khoa', 'alie', context),
                    buildAvatar('Minh', 'mia', context),
                    buildAvatar('Thi', 'adam', context),
                    buildAvatar('Khoa', 'jess', context),
                  ],
                ),
              ),
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
                    "Chia sẻ kinh nghiệm",
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
                              builder: (context) => const UploadBlog()));
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
                      "https://vntest.vn/wp-content/uploads/2021/03/nongsanvietvansongtamguithuonghieunuocngoai-1562742939_1562742967.jpg",
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
                      'Nông sản sạch - Xu hướng đầu tư 2023',
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
                          " LeMinh",
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
                          " 11/1/2022",
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                      const Text(
                        "Nông sản sạch thực chất là những sản phẩm nông sản được những người nông dân chăn nuôi hoặc gây trồng nên nhưng phải đảm bảo theo một tiêu chuẩn nhất định...",
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
                                          const BlogDetailScreen()));
                            },
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.pink[600],
                              ),
                              const Text("2")
                            ],
                          )),
                    ],
                  )),
            ],
          ),
        ),
      );

  Widget buildAvatar(String name, String filename, context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AuthorProfile()))
        },
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage:
                  Image.asset('assets/images/$filename.jpeg').image,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
