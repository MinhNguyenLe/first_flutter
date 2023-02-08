import 'package:chefio1/constans/colors.dart';
import 'package:flutter/material.dart';

class VeritableCategoriesList extends StatefulWidget {
  const VeritableCategoriesList({Key? key}) : super(key: key);

  @override
  State<VeritableCategoriesList> createState() => _CustomCategoriesListState();
}

class _CustomCategoriesListState extends State<VeritableCategoriesList> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Danh mục",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Row(
          children: [
            menuButton(
                onTap: () {
                  setState(() {
                    _index = 0;
                  });
                },
                color: _index == 0 ? primary : form,
                text: "Tất cả",
                textColor: _index == 0 ? Colors.white : SecondaryText,
                width: 100),
            menuButton(
                onTap: () {
                  setState(() {
                    _index = 1;
                  });
                },
                color: _index == 1 ? primary : form,
                text: "Thu hoạch nhanh",
                textColor: _index == 1 ? Colors.white : SecondaryText,
                width: 150),
          ],
        ),
        Row(
          children: [
           menuButton(
                onTap: () {
                  setState(() {
                    _index = 2;
                  });
                },
                color: _index == 2 ? primary : form,
                text: "Giá cao",
                textColor: _index == 2 ? Colors.white : SecondaryText,
                width: 100),
            menuButton(
                onTap: () {
                  setState(() {
                    _index = 3;
                  });
                },
                color: _index == 3 ? primary : form,
                text: "Tăng trưởng tốt",
                textColor: _index == 3 ? Colors.white : SecondaryText,
                width: 150),
          ],
        ),
      ],
    );
  }

  menuButton(
      {required String text,
      required Color color,
      required Color textColor,
      required double width,
      required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
