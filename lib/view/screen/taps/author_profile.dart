import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/widget/Custom_product_Item_widget.dart';
import 'package:chefio1/view/widget/custom_binary_option.dart';
import 'package:chefio1/view/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:chefio1/view/screen/blog_detail.dart';

class AuthorProfile extends StatelessWidget {
  AuthorProfile({
    Key? key,
    this.showFollowBottomInProfile = false,
  }) : super(key: key);
  bool showFollowBottomInProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: mainText,
              ),
            ),
          ),
        ],
        leading: showFollowBottomInProfile == true
            ? Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: mainText,
                    )),
              )
            : const SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              const AssetImage("assets/imges/Avatar2.png"),
                        ),
                        showFollowBottomInProfile == false
                            ? InkWell(
                                onTap: () {},
                                child: const CircleAvatar(
                                  radius: 12,
                                  backgroundColor: primary,
                                  child: Icon(
                                    Icons.edit,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "MinhLee",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "200",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Số nông sản đầu tư",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: SecondaryText),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "89",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Bài viết",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: SecondaryText),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "77",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Tổng lượt yêu thích",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: SecondaryText),
                            )
                          ],
                        ),
                      ],
                    ),
                    showFollowBottomInProfile == true
                        ? CustomButton(onTap: () {}, text: "Follow")
                        : const SizedBox(
                            height: 20,
                          ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomBinaryOption(
                    textLeft: "Bài viết gần đây",
                    textRight: "Nhiều lượt yêu thích",
                  ),
                  buildImageInteractionCard(context),
                  buildImageInteractionCard(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
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
}
