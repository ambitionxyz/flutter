import 'package:flutter/material.dart';
import 'package:g5/SignUp_page.dart';
import 'package:g5/destination_page.dart';
import 'package:g5/home_page.dart';
import 'package:g5/login_page.dart';
import 'package:g5/lopHocPhan_page.dart';
import 'package:g5/product_list_page.dart';
import 'package:g5/provider/product_provider.dart';
import 'package:g5/stack_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: ((_) => ProductProvider()))],
    child: MaterialApp(
      home: ProductListPage(),
    ),
  ));
}
