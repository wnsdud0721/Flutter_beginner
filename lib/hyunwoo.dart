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
    final PageController controller = PageController();
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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              // ignore: sized_box_for_whitespace
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      child: PageView(
                        //온보딩 스크린
                        controller: controller,
                        children: [1, 2, 3]
                            .map(
                              (number) => Image.asset(
                                'assets/images/hyunwoo$number.png', //파일명에 따라 수정
                                fit: BoxFit.fill,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Container(
                      width: double.infinity,
                      height: 240,
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
                              Icons.thumb_up_alt,
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  height: 350,
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
                          '∙이름 : 이현우',
                          style: TextStyle(fontSize: 20),
                        ),
                        Divider(
                          height: 0.5,
                          color: Color.fromARGB(207, 207, 207, 207),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '∙이름 : 이현우',
                          style: TextStyle(fontSize: 20),
                        ),
                        Divider(
                          height: 0.5,
                          color: Color.fromARGB(207, 207, 207, 207),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '∙이름 : 이현우',
                          style: TextStyle(fontSize: 20),
                        ),
                        Divider(
                          height: 0.5,
                          color: Color.fromARGB(207, 207, 207, 207),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '∙이름 : 이현우',
                          style: TextStyle(fontSize: 20),
                        ),
                        Divider(
                          height: 0.5,
                          color: Color.fromARGB(207, 207, 207, 207),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '∙이름 : 이현우',
                          style: TextStyle(fontSize: 20),
                        ),
                        Divider(
                          height: 0.5,
                          color: Color.fromARGB(207, 207, 207, 207),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
