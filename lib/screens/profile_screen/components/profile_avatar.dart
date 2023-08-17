import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_text_styles.dart';
import 'package:my_prof/constants/app_texts.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    final sizW = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: sizW / 11.5,
              backgroundImage: AssetImage('assets/images/a_i.png'),
            ),
            Icon(Icons.photo_camera, size: sizW / 20),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                children: [
                  Text(
                    AppTexts.profilName,
                    style: TextStyles.profilName,
                  ),
                  Text(
                    '${AppTexts.country}, ${AppTexts.city}',
                    style: TextStyles.location,
                  ),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  SizedBox(
                      width: sizW / 9,
                      height: sizW / 9.3,
                      child: Image.asset('assets/images/Rect.png')),
                  const Text('9,7', style: TextStyles.whiteNum),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
