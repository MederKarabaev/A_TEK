import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_text_styles.dart';
import 'package:my_prof/constants/app_texts.dart';

class ProfileInteresy extends StatelessWidget {
  const ProfileInteresy({
    super.key,
    required this.interesyList,
  });

  final List<String> interesyList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppTexts.interesy,
            style: TextStyles.interesPost,
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 24.0, // gap between adjacent chips
            runSpacing: 10.0, // gap between lines
            children: interesyList
                .map(
                  (e) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      e,
                      style: TextStyles.interesy,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
