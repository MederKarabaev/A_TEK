import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_colors.dart';
import 'package:my_prof/constants/app_lists.dart';

class ProfileButtomMenu extends StatefulWidget {
  const ProfileButtomMenu({super.key});

  @override
  State<ProfileButtomMenu> createState() => _ProfileButtomMenuState();
}

class _ProfileButtomMenuState extends State<ProfileButtomMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: AppColors.bottomMenu),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        dragStartBehavior: DragStartBehavior.down,
        itemCount: AppLists().icon.length,
        padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 0.5),
        itemBuilder: (ctx, i) => Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = i;
              });
            },
            child: Container(
              width: 71,
              decoration: BoxDecoration(
                color: AppColors.bottomMenu,
                border: i == selectedIndex
                    ? const Border(
                        top: BorderSide(width: 3.0, color: Colors.orange))
                    : null,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(AppLists().icon[i],
                      color: i == selectedIndex
                          ? AppColors.orange
                          : AppColors.black),
                  Text(
                    AppLists().menuName[i],
                    style: TextStyle(
                        color: i == selectedIndex
                            ? AppColors.orange
                            : AppColors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
