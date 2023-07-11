import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Suhong extends StatelessWidget {
  Suhong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Navigator.pop(context);
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
                  child: Image.asset(
                    'assets/images/suhong12.jpeg',
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
                        onTap: () {
                          launchUrl(
                              Uri.parse('https://github.com/sangchu0512'));
                        },
                        child: Icon(
                          Icons.cloud,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse('https://www.instagram.com/suhongg_s'));
                        },
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/suhongggg.jpeg'),
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/suhong1233.jpeg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/suhong12333.jpeg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                    child: RichText(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 20,
                  strutStyle: StrutStyle(fontSize: 16.0),
                  text: TextSpan(
                    text: '간단한 자기소개',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
