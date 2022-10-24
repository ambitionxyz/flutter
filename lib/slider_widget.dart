
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({Key? key}) : super(key: key);
  List<String> list = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 300,
        child: Row(
          children: [
            // for(int i = 0; i < list.length ; i++)
            //   Image.asset(list[i])
            ...list.map((e) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(e),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(30)
                )
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}