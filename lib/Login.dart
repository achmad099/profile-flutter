import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  String Username = "";
  String Password = "";

  void login() {
    if (Username == "" && Password == "") {
      Fluttertoast.showToast(
        msg: "Masukkan Username dan password",
        toastLength: Toast.LENGTH_SHORT,
      );
    } else if (Username == "Achmad" && Password == "Achmad99") {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Login Berhasil"),
              content: Text("Hi"),
              actions: <Widget>[
                TextButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ),
                    );
                  },
                ),
              ],
            );
          });
      // Route route = MaterialPageRoute(builder: (context) => LoginPage());
      // Navigator.push(context, route);
    } else {
      Fluttertoast.showToast(
        msg: "username or password tidak sesuai",
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                height: 270,
                width: 500,
                color: Color.fromARGB(255, 206, 229, 223),
                child: Column(children: [
                  Image.asset('assets/images/hallo.png',
                      height: 200, width: 200),
                  SizedBox(height: 10),
                ]),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Username', style: TextStyle(color: Colors.black87)),
                    SizedBox(height: 15),
                    TextFormField(
                      onChanged: (e) => Username = e,
                      style: TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                          hintText: 'username',
                          hintStyle: TextStyle(color: Colors.black12),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.blue))),
                    ),
                    SizedBox(height: 15),
                    Text('Password', style: TextStyle(color: Colors.black)),
                    SizedBox(height: 10),
                    TextFormField(
                      onChanged: (e) => Password = e,
                      obscureText: _isObscure,
                      style: TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              if (_isObscure) {
                                setState(() {
                                  _isObscure = false;
                                });
                              } else {
                                setState(() {
                                  _isObscure = true;
                                });
                              }
                            },
                            child: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.black12),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.blue))),
                    ),
                    SizedBox(height: 12),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text('Lupa Password',
                          style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: TextButton(
                        child: Text("Login"),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blue,
                            elevation: 15,
                            minimumSize: Size(100, 15),
                            padding: EdgeInsets.all(20)),
                        onPressed: () {
                          login();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          'Tidak punya akun ? Daftar Disini',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
