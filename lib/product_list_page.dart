import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:g5/model/product_modal.dart';
import 'package:g5/provider/product_provider.dart';
import 'package:provider/provider.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    provider.getProducts();
    return Scaffold(
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     ...provider.list.map((e) {
      //       return Text(
      //         e.title ?? "",
      //         style: TextStyle(fontSize: 20),
      //       );
      //     }).toList()
      //   ],
      // ),

      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          ...provider.list.map((e) {
            return Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(Random().nextInt(0xffffffff)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Image.network(e.image ?? "",
                        width: 200, height: 300, fit: BoxFit.contain),
                    Text(
                      e.title ?? "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    )
                  ],
                ));
          }).toList()
        ],
      ),
    );
  }
}
