import 'package:flutter/material.dart';
import 'package:my_prof/components/app_scafforld.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(title: 'Пригласить друзей', children: [
      Container(
        height: 30,
        color: Colors.grey.shade300,
        child: Row(
          children: [
            Icon(Icons.search),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  label: Text(
                    'Search',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.microwave),
              color: Colors.black,
            ),
          ],
        ),
      ),
      SizedBox(height: 50),
      Row(
        children: [
          CircleAvatar(
            radius: 15,
          ),
          SizedBox(width: 5),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.black26),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ali'),
                  Text('777-55-55-55'),
                ],
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
