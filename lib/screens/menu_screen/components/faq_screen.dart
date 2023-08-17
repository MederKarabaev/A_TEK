import 'package:flutter/material.dart';
import 'package:my_prof/components/app_scafforld.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'FAQ',
      children: [
        Center(
          child: Text('Как мы можем вам помочь?'),
        )
      ],
    );
  }
}
