import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/screen/second_upload_screen.dart';
import 'package:chefio1/view/widget/CustomSlider.dart';
import 'package:chefio1/view/widget/custom_button.dart';
import 'package:chefio1/view/widget/custom_text_fild_in_upload.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:chefio1/view/screen/home_screen.dart';
import 'package:chefio1/view/widget/veritable_slider.dart';

class VeritableUpload extends StatelessWidget {
  const VeritableUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Hủy",
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: Secondary),
                        ),
                      ),
                      Text(
                        "1/1",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: SecondaryText),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addCoverPhoto(),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Tên nông sản",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFildInUpload(
                        hint: "Tên nông sản",
                        radius: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Loại nông sản",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFildInUpload(
                        hint: "Loại nông sản",
                        radius: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Xuất xứ",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFildInUpload(
                        hint: "Xuất xứ",
                        radius: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Ngày thu hoạch",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFildInUpload(
                        hint: "Ngày thu hoạch",
                        radius: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Số lượng",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFildInUpload(
                        hint: "Số lượng",
                        radius: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Mô tả chi tiết",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFildInUpload(
                        hint: "Mô tả chi tiết",
                        maxLines: 4,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: const VeritableSlider(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      content: Container(
                                        padding: const EdgeInsets.all(20),
                                        height: 400,
                                        width: 327,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                                "assets/imges/image 8.png"),
                                            Text(
                                              "Thành công",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1,
                                            ),
                                            Text(
                                              "Hãy tiếp tục sử dụng dịch vụ",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2,
                                            ),
                                            Text(
                                              "Chúng tôi sẽ hỗ trợ bạn",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2,
                                            ),
                                            CustomButton(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomeScreen()));
                                                },
                                                text: "Quay trở về trang chủ")
                                          ],
                                        ),
                                      ),
                                    ));
                          },
                          text: "Lưu")
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }

  addCoverPhoto() {
    return InkWell(
      onTap: () {
        // add image to firbase
      },
      // This is ana external package
      child: DottedBorder(
          dashPattern: [15, 5],
          color: outline,
          strokeWidth: 2,
          borderType: BorderType.RRect,
          radius: const Radius.circular(10),
          child: SizedBox(
            width: double.infinity,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.photo,
                    size: 65,
                    color: Colors.grey,
                  ),
                  Text(
                    "Ảnh nông sản",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text("Tối đa 12mp ")
                ],
              ),
            ),
          )),
    );
  }
}
