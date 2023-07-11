// 준영's 자기소개 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Junyoung extends StatelessWidget {
  Junyoung({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text(
            "Hello I am Junyoung",
            style: TextStyle(
              fontFamily: "Baloo2",
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.blue[300],
            ),
          ),
          SizedBox(height: 30),
          Image.asset(
            'assets/images/hjy_main.png',
            width: 300,
            height: 300,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AboutMe()),
                  );
                },
                child: Text(
                  'About me',
                  style: TextStyle(
                    fontFamily: "Baloo2",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue[300],
                  ),
                ),
              ),
              //SizedBox(width: 43),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Like()),
                  );
                },
                child: Text(
                  'Like',
                  style: TextStyle(
                    fontFamily: "Baloo2",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue[300],
                  ),
                ),
              ),
              //SizedBox(width: 91),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Want()),
                  );
                },
                child: Text(
                  'Want',
                  style: TextStyle(
                    fontFamily: "Baloo2",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue[300],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 40,
                icon: Image.asset(
                  'assets/images/instagram.png',
                ),
              ),
              SizedBox(width: 23),
              IconButton(
                onPressed: () {},
                iconSize: 40,
                icon: Image.asset(
                  'assets/images/github.png',
                ),
              ),
              SizedBox(width: 23),
              IconButton(
                onPressed: () {},
                iconSize: 36,
                icon: Image.asset(
                  'assets/images/velog.png',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 2,
        title: Text(
          "About Me",
          style: TextStyle(
            fontFamily: "Baloo2",
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "안녕하세요 \u{1F44B} 저는 홍준영이고 26살입니다."
              "\n저는 밝고 긍정적인 편이어서 시간이 걸리더라도,"
              "\n언젠가는 다 해낼 수 있다고 믿고 있어요!",
              style: TextStyle(
                fontFamily: "Yeongdeok",
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Image.asset(
              'assets/images/junyoung/infj.png',
              width: 280,
              height: 280,
            ),
            SizedBox(height: 50),
            Text(
              "저의 MBTI는 INFJ입니다. 처음 보는 사람들에게"
              "\n맞춰보라고 하면 NFJ는 바로 나오지만, I와 E는"
              "\n헷갈려 합니다 \u{1F9D0}"
              "\n사람들이랑 이야기 하는 걸 좋아하는 I입니다."
              "\n다른 사람의 이야기를 잘 들어준다는 점이"
              "\n저의 장점이기도 합니다 \u{270C}"
              "\n같이 많이 소통하면서 열심히 달려봐요 \u{1F525}",
              style: TextStyle(
                fontFamily: "Yeongdeok",
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class Like extends StatelessWidget {
  Like({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 2,
        title: Text(
          "Like",
          style: TextStyle(
            fontFamily: "Baloo2",
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Text("Like's page"),
        ],
      ),
    );
  }
}

class Want extends StatelessWidget {
  Want({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Want's page"),
      ),
    );
  }
}
