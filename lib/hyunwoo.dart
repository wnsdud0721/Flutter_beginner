// 현우's 자기소개 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hyunwoo extends StatefulWidget {
  Hyunwoo({super.key});

  @override
  State<Hyunwoo> createState() => _HyunwooState();
}

class _HyunwooState extends State<Hyunwoo> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(230, 230, 230, 230),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(207, 207, 207, 207),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'member card',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            // ignore: sized_box_for_whitespace
            child: Stack(
              children: <Widget>[
                Container(
                  height: 480,
                  width: double.infinity,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: (Image.asset('assets/images/hyunwoo1.png',
                          fit: BoxFit.fill)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Container(
                    width: double.infinity,
                    height: 470,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _counter++; // 클릭시 숫자 상승
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            CupertinoIcons.hand_thumbsup_fill,
                            color: Colors.white,
                          ),
                          Text(
                            '$_counter',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey,
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '이름 : 이현우',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '이름 : 이현우',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '이름 : 이현우',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '이름 : 이현우',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '이름 : 이현우',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
