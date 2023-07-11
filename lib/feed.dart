import 'package:beginner/hyunwoo.dart';
import 'package:beginner/junyoung.dart';
import 'package:beginner/suhong.dart';
import 'package:beginner/sunghak.dart';
import 'package:beginner/woojun.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Feed extends StatelessWidget {
  const Feed({
    super.key,
    required this.imagePath,
    required this.name,
    required this.comment,
  });

  final String imagePath;
  final String name;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // CilpRRect 를 통해 이미지에 곡선 border 생성
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          // 이미지
          child: Image.asset(
            imagePath,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4),
              Text(
                comment,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            if (name == '홍준영') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Junyoung()),
              );
            } else if (name == '박수홍') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Suhong()),
              );
            } else if (name == '이우준') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Woojun()),
              );
            } else if (name == '이현우') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Hyunwoo()),
              );
            } else if (name == '김성학') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Sunghak()),
              );
            }
          },
          icon: Icon(CupertinoIcons.arrow_right),
        ),
      ],
    );
  }
}
