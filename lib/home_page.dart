// 홈 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePath = [
      'assets/images/junyoung/junyoung_feed.jpeg',
      'assets/images/suhong/suhong12.jpeg',
      'assets/images/Woojun_image.png',
      'assets/images/hyunwoo1.png',
      //'assets/images/junyoung4.png',
    ];
    final List<String> name = [
      '홍준영',
      '박수홍',
      '이우준',
      '이현우',
      //'김성학',
    ];
    final List<String> comment = [
      '모두 화이팅입니다!!',
      '열심히 달려보아요🔥',
      '열심히 해요!',
      '아잣아잣 화이팅!!',
      //'영차~~',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Beginner",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: "Baloo2",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "팀 소개",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: "Pretendard",
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "저희는 5명의 I들이 만나서 즐겁게 작업하는 팀 입니다!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.5,
                  fontFamily: "Pretendard",
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "팀 규칙",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: "Pretendard",
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
                  fontSize: 15.5,
                  fontFamily: "Pretendard",
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
                  fontSize: 15.5,
                  fontFamily: "Pretendard",
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "• PR은 기능을 완성할 경우 생성하기",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15.5,
                  fontFamily: "Pretendard",
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "• 다같이 merge를 진행한 후, pull 땡겨오기",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15.5,
                  fontFamily: "Pretendard",
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(
                        'https://github.com/wnsdud0721/Flutter_beginner'));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/github_main.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Beginner's\nGitHub",
                        style: TextStyle(
                          fontFamily: "Pretendard",
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(
                        'https://www.notion.so/Beginner-cc9d4df2049142dab730b5e478299fdd?pvs=4'));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/notion.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Beginner's\nNotion",
                        style: TextStyle(
                          fontFamily: "Pretendard",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
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
    );
  }
}
