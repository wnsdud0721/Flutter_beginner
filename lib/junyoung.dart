// 메모 생성 및 수정 페이지
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Junyoung extends StatelessWidget {
  Junyoung({super.key});

  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       // 삭제 버튼 클릭시
          //     },
          //     icon: Icon(Icons.delete),
          //   )
          // ],
          ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: contentController,
          decoration: InputDecoration(
            hintText: "메모를 입력하세요",
            border: InputBorder.none,
          ),
          autofocus: true,
          maxLines: null,
          expands: true,
          keyboardType: TextInputType.multiline,
          onChanged: (value) {
            // 텍스트필드 안의 값이 변할 때
          },
        ),
      ),
    );
  }
}
