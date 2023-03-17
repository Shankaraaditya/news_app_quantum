import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_quantom/functions/auth.dart';
// import 'package:news_app_quantom/screens/home_page.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
   

  @override
  State<SignupScreen> createState() => _SignupScreenState();
  
}

class _SignupScreenState extends State<SignupScreen> {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const List<String> items = <String>['+91', '+92', '+93'];
    String? selected = '+91';
   
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 440,
            margin: const EdgeInsets.only(bottom: 20),
            // color: Colors.green,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create an\n Account",
                    style: GoogleFonts.lato(
                        fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                 const  SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        icon: Icon(
                          Icons.person,
                          color: Colors.red,
                        ),
                        labelStyle: TextStyle(fontSize: 20)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   TextField(
                     onChanged: (value) {
                      print(value);
                    },
                    controller: emailController,
                    decoration:  InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        hintText: "Email",
                        labelStyle: TextStyle(fontSize: 20)),
                  ),
                 const  SizedBox(
                    height: 10,
                  ),
                 const  Padding(
                    padding:  EdgeInsets.only(left: 35),
                    child: Text(
                      "Contact no",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  // SizedBox(
                  //   height: 0,
                  // ),
                  Row(
                    children: [
                      CountryFlags.flag(
                        'in',
                        height: 20,
                        width: 40,
                        borderRadius: 1,
                      ),
                     const  SizedBox(
                        width: 10,
                      ),
                     const  Text(
                        "IN",
                        style: TextStyle(fontSize: 20),
                      ),
                     const  SizedBox(
                        width: 10,
                      ),
                      DropdownButton<String>(
                        value: selected,
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ))
                            .toList(),
                        onChanged: (item) => () {},
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                       onChanged: (value) {
                      print(value);
                    },
                      controller: passController,
                      decoration:const InputDecoration(
                          icon: Icon(
                            Icons.password,
                            color: Colors.red,
                          ),
                          label: Text("Password")),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account ?"),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
              child: InkWell(
            onTap: () {
              signup(emailController.text.trim(), passController.text.trim());
            },
            child: Container(
              height: 20,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Center(
                child: Text(
                  "SIGN UP",
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
