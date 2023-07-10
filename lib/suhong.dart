import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Row(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: IconButton(
                      onPressed: () {
                        print("click");
                      },
                      icon: Icon(Icons.arrow_back),
                      iconSize: 28,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      'https://i.ibb.co/PDLnTWW/Kakao-Talk-Photo-2023-07-10-18-44-15.jpg',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "박수홍",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      'INFP',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.cloud,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.mood,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Divider(
              height: 30, //간격
              thickness: 2, //선의 두께
              indent: 20, //시작점
              endIndent: 20, //끝지점
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    '취미  :  운동',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.grey[600]),
                  ),
                  Spacer(),
                  Text(
                    '관심사  : ios ',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            Divider(
              height: 30, //간격
              thickness: 2, //선의 두께
              indent: 20, //시작점
              endIndent: 20, //끝지점
              color: Colors.grey,
            ),
            Text('(간단한 자기소개)')
          ],
        ),
      ),
    );
  }
}
