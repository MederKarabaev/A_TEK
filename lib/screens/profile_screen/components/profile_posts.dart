import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_text_styles.dart';
import 'package:my_prof/constants/app_texts.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({
    super.key,
    required this.imagesPosts,
  });

  final List<String> imagesPosts;

  @override
  Widget build(BuildContext context) {
    final sizW = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppTexts.posts,
          style: TextStyles.interesPost,
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: sizW / 25,
          runSpacing: sizW / 40,
          children: imagesPosts
              .map(
                (e) => Container(
                  width: sizW / 4,
                  height: sizW / 4,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    e,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
