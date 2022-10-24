import 'dart:math';

import 'package:flutter/material.dart';

class HashtagWidget extends StatelessWidget {
  HashtagWidget({Key? key}) : super(key: key);
  List<String> list = [
    'Tất cả',
    'Âm nhạc',
    'Trò chơi',
    'Trực tiếp',
    'Hoạt họa',
    'Danh sách kết hợp',
    'Bóng đá',
    'Nông nghiệp',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...list.map((e) {
            return Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(Random().nextInt(0xffffffff)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  e,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 , color: Colors.black),
                ));
          }).toList()
        ],
      ),
    );
  }
}
