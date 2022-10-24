import 'dart:collection';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:g5/model/lophocphan_model.dart';

class LopHocPhanPage extends StatelessWidget {
  const LopHocPhanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...ls.map((e) {
              return Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                padding: EdgeInsets.all(20),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(e.hinhNen??""),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.tenLopHocPhan??"",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      e.maLopHoc??"",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 50,),
                    Text(
                      "${e.soLuongSinhVien??0} học viên",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}