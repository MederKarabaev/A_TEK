import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_colors.dart';

class MenuContainer extends StatelessWidget {
  const MenuContainer({
    super.key,
    this.title,
    this.widget,
    this.icons,
  });
  final String? title;
  final Widget? widget;
  final IconData? icons;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget!));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          children: [
            Icon(
              icons,
              color: AppColors.orange,
            ),
            SizedBox(width: 8),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title ?? 'Без названия'),
                  Icon(Icons.arrow_right_alt),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
