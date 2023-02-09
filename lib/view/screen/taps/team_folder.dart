import './project.dart';
import 'package:flutter/material.dart';
import 'package:chefio1/view/screen/taps/profile_tap.dart';
import 'package:chefio1/view/screen/taps/veritable_tab.dart';

class TeamFolderPage extends StatefulWidget {
  const TeamFolderPage({Key? key}) : super(key: key);

  @override
  State<TeamFolderPage> createState() => _TeamFolderPageState();
}

class _TeamFolderPageState extends State<TeamFolderPage> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(children: [
        // Header Section
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.bottomCenter,
          height: 170,
          decoration: BoxDecoration(color: Colors.blue.shade800),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Xin chào MinhLee",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "20.000.000 VND",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(.1)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(.1)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ]),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: const TextSpan(
                text: "Tiến độ nông sản đang đầu tư ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
              const Text(
                "Xem biểu đồ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              buildFileSizeChart("Đang thu hoạch", Colors.blue, .3),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("Giá thấp", Colors.red, .25),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("Giá cao", Colors.yellow, .20),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("Còn lại", Colors.grey[200], .23),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          height: 20,
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              const Text(
                "Lợi nhuận đạt được",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  buildFileColumn('sketch', 'Kiwi', ' - 11.2%'),
                  SizedBox(
                    width: availableScreenWidth * .03,
                  ),
                  buildFileColumn('sketch', 'Cafe', ' - 8%'),
                  SizedBox(
                    width: availableScreenWidth * .03,
                  ),
                  buildFileColumn('prd', 'Nho', ' - 2%'),
                ],
              ),
              const Divider(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Danh sách đầu tư",
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
                              builder: (context) => const VeritableTab()),
                        );
                      },
                      child: const Text(
                        "Tìm thêm nông sản",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Folder List
              buildProjectRow("Đã thu hoạch"),
              buildProjectRow("Đang thu hoạch"),
              buildProjectRow("Sắp thu hoạch"),
              buildProjectRow("Sản phẩm dự tính đầu tư"),
            ],
          ),
        )
      ]),
    );
  }

  Widget buildProjectRow(String folderName) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(
          builder: (BuildContext context) => ProfileTap(),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 65,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Icon(
                Icons.folder,
                color: Colors.blue[200],
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                folderName,
                style: const TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.grey,
            ),
          )
        ]),
      ),
    );
  }

  Column buildFileColumn(String image, String filename, String extension) {
    return Column(
      children: [
        Container(
          width: availableScreenWidth * .31,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.all(38),
          height: 110,
          child: Image.asset('assets/images/$image.png'),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
              text: filename,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: extension,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ]),
        ),
      ],
    );
  }

  Column buildFileSizeChart(
      String title, Color? color, double widthPercentage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: availableScreenWidth * widthPercentage,
          height: 4,
          color: color,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
