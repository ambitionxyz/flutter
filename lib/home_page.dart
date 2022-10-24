import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  String urlImage = "https://images.unsplash.com/photo-1663396467783-c6d3aeb444e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30
          ),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 40,
        ),

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Hello world!",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30
                ),
              ),
              Text(
                "Welcome to my class",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30
                ),
              ),
              Row(
                children: const[
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 50,
                  ),
                  Text(
                    "50 ratings",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Image.network(urlImage),
              Image.asset("assets/images/1.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}