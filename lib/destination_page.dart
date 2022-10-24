import 'package:flutter/material.dart';
import 'package:g5/slider_widget.dart';

import 'hashtag_widget.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        //blockImage(context),
        SliderWidget(),
        HashtagWidget(),
        blockTitle(context),
        blockButtons(context),
        blockDescription(context),
      ]),
    ));
  }
}

blockImage(BuildContext context) {
  return Image.asset(
    "assets/images/1.jpg",
  );
}

button(String title, IconData iconData) {
  return Column(
    children: [
      Icon(
        iconData,
        color: Colors.blueAccent,
        size: 30,
      ),
      Text(
        title,
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 20,
        ),
      )
    ],
  );
}

blockDescription(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
      "Trong lịch sử phát triển hàng trăm năm của nền giáo dục Huế, Trường Đại học Khoa học, Đại học Huế là một điểm sáng đáng chú ý với bề dày truyền thống 65 năm xây dựng và phát triển (1957 - 2022). Ngay từ những ngày đầu thành lập, Trường đã sớm xác lập ảnh hưởng, khẳng định uy tín và vị thế của một trong những trường đại học đầu tiên của miền Nam Việt Nam, mang đậm dấu ấn của vùng đất Cố đô đẹp và thơ, giàu truyền thống lịch sử, văn hoá và đấu tranh cách mạng. Từ đó đến nay, ảnh hưởng, uy tín, vị thế và bản sắc đó đã được lớp lớp thế hệ thầy trò kế thừa và phát huy xứng đáng dẫu rằng trong quá trình phát triển đã gặp không ít khó khăn, thách thức do tác động của bối cảnh trong nước và quốc tế.",
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

blockButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      button("Call", Icons.phone),
      button("Route", Icons.near_me),
      button("Share", Icons.share)
    ],
  );
}

blockTitle(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [
          Text(
            "Trường đại học khoa học",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            "77 Nguyễn Huệ, TP.Huế",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25,
            ),
          ),
        ]),
        Row(
          children: const [
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20),
            )
          ],
        )
      ],
    ),
  );
}
