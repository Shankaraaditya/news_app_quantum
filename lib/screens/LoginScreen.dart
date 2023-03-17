import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_quantom/functions/auth.dart';
import 'package:news_app_quantom/screens/home_page.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();
  bool login = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 440,
            margin: EdgeInsets.only(bottom: 20),
            // color: Colors.green,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SignIn into your\n Account",
                    style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: "Email id:",
                        icon: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        hintText: "John@gmail.com",
                        labelStyle: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    controller: passController,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.red,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 20)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 135),
                      child: Text("Login With")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Google",
                            style: TextStyle(color: Colors.red),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an Accound ?"),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Expanded(
              child: InkWell(
            onTap: () {
              signin(emailController.text.trim(), passController.text.trim(),
                  login);
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
            },
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Center(
                child: Text(
                  "LOGIN",
                  style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
