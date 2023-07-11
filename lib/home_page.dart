// 홈 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePath = [
      'assets/images/junyoung.png',
      'assets/images/soohong.png',
      'assets/images/junyoung1.png',
      'assets/images/junyoung3.png',
      'assets/images/junyoung4.png',
    ];
    final List<String> name = [
      '홍준영',
      '박수홍',
      '이우준',
      '이현우',
      '김성학',
    ];
    final List<String> comment = [
      '모두 화이팅입니다!!',
      '화이팅~~!',
      '열심히 해요!',
      '아잣아잣 화이팅!!',
      '영차~~',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Beginner",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "팀 소개",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "저희는 5명의 I들이 만나서 즐겁게 작업하는 팀 입니다!",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "팀 규칙",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "• 13시에 점심먹기",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "• 18시에 저녁먹기",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "• Git Merge는 매일 6시에 하기",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: ListView.separated(
                itemCount: imagePath.length,
                itemBuilder: (context, index) {
                  final image = imagePath[index];
                  final names = name[index];
                  final comments = comment[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Feed(
                      imagePath: image,
                      name: names,
                      comment: comments,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // + 버튼 클릭시 메모 생성 및 수정 페이지로 이동
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => DetailPage()),
          );
        },
      ),
    );
  }
}
