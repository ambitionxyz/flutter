import 'dart:math';

import 'package:flutter/material.dart';
import 'package:g5/model/lophocphan_model.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

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
                  return Stack(
                          children: [
                            Container(
                              height: 150,
                              decoration:  BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(e.hinhNen??""),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20)
                              ), 
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                                child: Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    e.tenLopHocPhan??"" ,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        decoration: TextDecoration.none
                                      ), 
                                  ),
                                ),
                            ),
                            Positioned(
                              top: 0,
                              right: 10,
                                child: Container(
                                  height: 100,
                                  child: Text(
                                    "..." ,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none
                                      ), 
                                  ),
                                ),
                            ),
                            Positioned(
                              top: 40,
                              left: 10,
                                child: Container(
                                  height: 200,
                                  width: 300,
                                  child: Text(
                                      e.maLopHoc??"" ,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          decoration: TextDecoration.none
                                        ),
                                  ),
                                ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                                child: Container(
                                  height: 20,
                                  width: 300,
                                  child: Text(
                                      "${e.soLuongSinhVien??0 } học viên" ,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          decoration: TextDecoration.none
                                        ),
                                  ),
                                ),
                            ),
                          ]
                    );
                  },).toList(),
              ],
            ),
        ),
    );
  }
}