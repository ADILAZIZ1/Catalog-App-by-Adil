
import 'package:flutter/material.dart';
import 'package:practice_2/pages/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {});
                        await Future.delayed(const Duration(seconds: 1));
                        await Navigator.pushNamed(context, MyRoutes.homeRoute);
                        changeButton = !changeButton;
                      },
                      child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 50,
                          width: changeButton ? 150 : 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                changeButton ? 8.0 : 50.0),
                            color: Colors.deepPurple,
                          ),
                          alignment: Alignment.center,
                          child: changeButton
                              ? Text(
                                  "Login",
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              : Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
