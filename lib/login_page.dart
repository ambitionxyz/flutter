import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPapge extends StatelessWidget {
  LoginPapge({Key? key}) : super(key: key);

  var userNameController = TextEditingController();
  var passwordNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  "ĐĂNG NHẬP", 
                  style: TextStyle(
                    fontSize: 25 , 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  child: TextFormField(
                    validator: (value){
                      if(value == null || value.trim().isEmpty){
                        return "Tên đăng nhập không được để trống";
                      }else {
                        return null;
                      }
                    },
                    controller: userNameController,
                    decoration: InputDecoration(
                      hintText:  "Vui lòng nhập tên đăng nhập",
                      label: Text("Tên đăng nhập"),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                      // keyboardType: TextInputType.numberWithOptions(decimal: true),
                      // inputFormatters: <TextInputFormatter>[
                      //       FilteringTextInputFormatter.allow(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')),
                      //   ], 
                      // //obscureText: true,
                      // validator: (value) {
                      //   if (value == null || value.trim().isEmpty) {
                      //     return 'Mật khẩu không được để trống';
                      //   }
                      //   return null;
                      // },
                    validator: (value){
                      RegExp regex =
                          RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (value == null || value.isEmpty) {
                        return 'Mật khẩu không được để trống';
                      } else {
                        if (!regex.hasMatch(value)) {
                          return 'Mật khẩu không hợp lệ';
                        } else {
                          return null;
                        }
                      }
                    },
                    controller: passwordNameController,
                    decoration: InputDecoration(
                      hintText:  "Vui lòng nhập mật khẩu",
                      label: Text("Mật khẩu"),
                      prefixIcon: Icon(Icons.key),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(formKey.currentState!.validate()){
                      var userName = userNameController.text;
                      var password = passwordNameController.text;
                      var snackBar = SnackBar(
                        content: Text("Xin chào: ${userName}"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Container(
                    child: Text(
                      "Đăng Nhập",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
                const SizedBox(height: 50,)
                ,
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, 
                            MaterialPageRoute(builder: (_)=> SignUpPage())
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            //side: BorderSide(color: Colors.)
                          )
                        )
                      ) ,
                    child:  
                      Text("Tạo tài khoản mới", style: TextStyle(fontSize: 20),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  var userNameController = TextEditingController();
  var passwordNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  "Đăng ký tài khoản",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Tên đăng nhập không được để trống";
                      } else {
                        return null;
                      }
                    },
                    controller: userNameController,
                    decoration: InputDecoration(
                      hintText: "Vui lòng nhập tên đăng nhập",
                      label: Text("Tên", style: TextStyle(color: Color.fromARGB(255, 125, 124, 124)),),
                      prefixIcon: Icon(Icons.person, color: Colors.grey,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(211, 211, 211, 1))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Email không được để trống";
                      } else {
                        return null;
                      }
                    },
                    controller: userNameController,
                    decoration: InputDecoration(
                      hintText: "Vui lòng nhập email",
                      label: Text("Email", style: TextStyle(color: Color.fromARGB(255, 125, 124, 124)),),
                      prefixIcon: Icon(Icons.email, color: Colors.grey,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(211, 211, 211, 1))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    validator: (value) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (value == null || value.isEmpty) {
                        return 'Mật khẩu không được để trống';
                      } else {
                        if (!regex.hasMatch(value)) {
                          return 'Mật khẩu không hợp lệ';
                        } else {
                          return null;
                        }
                      }
                    },
                    controller: passwordNameController,
                    decoration: const InputDecoration(
                      hintText: "Vui lòng nhập mật khẩu",
                      label: Text("Mật khẩu" , style: TextStyle(color: Color.fromARGB(255, 125, 124, 124)),),
                      prefixIcon: Icon(Icons.key , color: Colors.grey,),
                      iconColor:  Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(211, 211, 211, 1)
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            var userName = userNameController.text;
                            var password = passwordNameController.text;
                            var snackBar = SnackBar(
                              content: Text("Xin chào: ${userName}"),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          //side: BorderSide(color: Colors.)
                        ))),
                        child: Text(
                          "Đăng Ký",
                          style:
                              TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context, 
                            MaterialPageRoute(builder: (_)=> LoginPapge())
                          );
                        },
                        style: ButtonStyle(
                            //backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 51, 178, 195)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)
                            ),
                            //overlayColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 237, 196, 183)),
                            ),
                        child: Text(
                          "Quay lại",
                          style:
                              TextStyle(fontSize: 20, color: Colors.deepOrange),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}