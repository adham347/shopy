import 'package:flutter/material.dart';
import 'package:shopy/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';
  var _emailController = TextEditingController();
  var _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "LOGGING IN",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 45,
                        color: Colors.black
                      ),
                    ),
                  ),
                  Text(
                    "Welcome back",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xFFD65A31)
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text("Email",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 300,
                          height: 50,
                          child:
                          TextField(
                            controller: _emailController,
                            onChanged: (value){
                              email=value;
                            },
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText:"example@example.com"
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text("Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 300,
                          height: 50,
                          child:
                          TextField(
                            controller: _passController,
                            onChanged: (value){
                              password = value;
                            },
                            obscureText: true,
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText:".........."
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  SizedBox(
                    width: 140,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: ()async{
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Signing In..."))
                          );
                          try {
                            final loggedUser = await auth
                                .signInWithEmailAndPassword(
                                email: email, password: password);
                            if(loggedUser != null){
                              Navigator.pushNamedAndRemoveUntil(context, 'home_screen', (_) => false);
                            }
                          }on FirebaseAuthException catch(e){
                            print(e);
                            print(e.code);
                            print(e.message);
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Invalid Email of Password"))
                            );

                            _emailController.clear();
                            _passController.clear();
                          }

                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white
                          ),
                        )

                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
