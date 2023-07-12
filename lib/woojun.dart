// 우준's 자기소개 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Self Introduction',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Woojun(),
    );
  }
}

class Woojun extends StatelessWidget {
  const Woojun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Center(
                child: PhotoImageView(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  "이름: 이우준",
                  style: TextStyle(fontSize: 50),
                ),
                SizedBox(height: 20),
                Text(
                  'MBTI: INTP',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                Text(
                  '잘부탁드립니다',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoImageView extends StatelessWidget {
  const PhotoImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double imageSize = MediaQuery.of(context).size.width / 2 * 1.5;

    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/Woojun_image.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
