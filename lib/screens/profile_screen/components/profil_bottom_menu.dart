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
    final sizW = MediaQuery.of(context).size.width;
    return Container(
      height: sizW / 5.8,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: AppColors.bottomMenu),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Container(
                width: sizW / 5,
                decoration: BoxDecoration(
                  color: AppColors.bottomMenu,
                  border: 0 == selectedIndex
                      ? Border(
                          top: BorderSide(
                              width: sizW / 110, color: Colors.orange))
                      : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppLists().icon[0],
                        color: 0 == selectedIndex
                            ? AppColors.orange
                            : AppColors.black),
                    Text(
                      AppLists().menuName[0],
                      style: TextStyle(
                          color: 0 == selectedIndex
                              ? AppColors.orange
                              : AppColors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Container(
                width: sizW / 5,
                decoration: BoxDecoration(
                  color: AppColors.bottomMenu,
                  border: 1 == selectedIndex
                      ? Border(
                          top: BorderSide(
                              width: sizW / 110, color: Colors.orange))
                      : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppLists().icon[1],
                        color: 1 == selectedIndex
                            ? AppColors.orange
                            : AppColors.black),
                    Text(
                      AppLists().menuName[1],
                      style: TextStyle(
                          color: 1 == selectedIndex
                              ? AppColors.orange
                              : AppColors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Container(
                width: sizW / 5,
                decoration: BoxDecoration(
                  color: AppColors.bottomMenu,
                  border: 2 == selectedIndex
                      ? Border(
                          top: BorderSide(
                              width: sizW / 110, color: Colors.orange))
                      : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppLists().icon[2],
                        color: 2 == selectedIndex
                            ? AppColors.orange
                            : AppColors.black),
                    Text(
                      AppLists().menuName[2],
                      style: TextStyle(
                          color: 2 == selectedIndex
                              ? AppColors.orange
                              : AppColors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: Container(
                width: sizW / 5,
                decoration: BoxDecoration(
                  color: AppColors.bottomMenu,
                  border: 3 == selectedIndex
                      ? Border(
                          top: BorderSide(
                              width: sizW / 110, color: Colors.orange))
                      : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppLists().icon[3],
                        color: 3 == selectedIndex
                            ? AppColors.orange
                            : AppColors.black),
                    Text(
                      AppLists().menuName[3],
                      style: TextStyle(
                          color: 3 == selectedIndex
                              ? AppColors.orange
                              : AppColors.black),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
