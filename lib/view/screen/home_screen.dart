import 'package:chefio1/constans/colors.dart';
import 'package:chefio1/view/screen/scan_output_screen.dart';
import 'package:chefio1/view/screen/taps/home_tap.dart';
import 'package:chefio1/view/screen/taps/veritable_tab.dart';
import 'package:chefio1/view/screen/taps/notifcation_tap.dart';
import 'package:chefio1/view/screen/taps/profile_tap.dart';
import 'package:chefio1/view/screen/taps/scan_tap.dart';

import 'package:chefio1/view/screen/taps/upload_tap.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
// we ut the bottomm vavigation bar in a sepatatre method
      bottomNavigationBar: bottomNavigationBar(),
      // we put the foationAction Botton in a sepatatre method
      floatingActionButton: floatingActionButton(),
      // here is the location of the floating action button
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: taps[_currenIndex],
    ));
  }

// list of taps
  List<Widget> taps = [
    const HomeTap(),
    const VeritableTab(),
    const ScanTap(),
    ProfileTap(),
    NotitcationTap(),
  ];

  bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currenIndex,
      fixedColor: primary,
      backgroundColor: Colors.white,
      elevation: 0,
      onTap: (int index) {
        if (index == 0) {
          setState(() {
            _currenIndex = index;
          });
        } else if (index == 1) {
          setState(() {
           _currenIndex = index;
          });
        } else if (index == 2) {
          setState(() {});
        } else if (index == 3) {
          setState(() {
            _currenIndex = index;
          });
        } else if (index == 4) {
          setState(() {
            _currenIndex = index;
          });
        }
      },
      unselectedItemColor: SecondaryText,
      items: items,
      type: BottomNavigationBarType.fixed,
    );
  }

  // list of items
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(IconlyBold.home),
      label: "Chia sẻ",
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBold.edit),
      label: "Nông sản",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        IconlyBold.scan,
        color: Colors.white,
      ),
      label: "Chức năng",
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBold.profile),
      label: "Đầu tư",
    ),
    BottomNavigationBarItem(
      icon: Icon(IconlyBold.notification),
      label: "Thông báo",
    ),
  ];

  floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          showModalBottomSheet(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
              context: context,
              builder: (context) => _bottomSheet(context));
        });
      },
      backgroundColor: primary,
      elevation: 0,
      child: const Icon(
        IconlyBold.scan,
      ),
    );
  }

  _bottomSheet(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            horizontalTitleGap: 36,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
            title: Text(
              "Bạn tham gia với vai trò gì ?",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: mainText),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScanUotputScreen(
                                title: "Nhà đầu tư",
                              )));
                },
                child: Container(
                  height: 170,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: outline),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/imges/image 6.png",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Nhà đầu tư",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ScanUotputScreen(title: "Người nông dân")));
                },
                child: Container(
                  height: 170,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: outline),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/imges/image 7.png",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Người nông dân",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: mainText),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
