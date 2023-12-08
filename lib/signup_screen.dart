import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopy/main.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  String email = "";
  String password = "";
  String firstname = "";
  String lastname = "";
  String confirmPass = "";

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to ",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Colors.black
                        ),
                      ),
                      Text(
                        "Sh",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                          "o",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              color: Color(0xFFC4DCDC)
                          )
                      ),
                      Text(
                        "p",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "y",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Color(0xFFEEAF00)
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text("First Name",
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
                          onChanged: (value){
                            firstname = value;
                          },
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text("Last Name",
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
                          onChanged: (value){
                            lastname = value;
                          },
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
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
                          onChanged: (value){
                            email = value;
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
                  height: 20,
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
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text("Confirm Password",
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
                          onChanged: (value){
                            confirmPass = value;
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
                  height: 30,
                ),
                SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: ()async {
                        if(password.isEmpty || confirmPass.isEmpty || firstname.isEmpty || lastname.isEmpty || email.isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Fill in all the fields!"))
                          );
                        }else{
                          if(password == confirmPass){
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Creating your account..."))
                            );
                            print(email);
                            print(password);
                            print(firstname+' '+lastname);
                            try {
                              final newUser = await auth.createUserWithEmailAndPassword(
                                  email: email, password: password);

                              if (newUser != null) {
                                print(auth.currentUser);
                                auth.currentUser?.updateDisplayName(firstname+' '+lastname);
                                await Future.delayed(const Duration(seconds: 2));
                                print(auth.currentUser);

                                Navigator.pushNamedAndRemoveUntil(context, 'home_screen', (route) => false);
                              }
                            } on FirebaseAuthException catch (e) {
                              print(e);
                              if (e.code == 'weak-password') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('The password provided is too weak.'))
                                );
                              } else if (e.code == 'email-already-in-use') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('The account already exists for that email.'))
                                );
                              }

                            } catch (e) {
                              print(e);
                            }
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Passwords doesn't match"))
                            );
                          }
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      child: Text(
                        "Sign up",
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
