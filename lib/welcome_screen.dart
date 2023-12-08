
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Sh",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 80,
                  ),
                ),
                Text(
                  "o",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 80,
                    color: Color(0xFFC4DCDC)
                  )
                ),
                Text(
                    "p",
                    style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 80,
                  ),
                ),
                Text(
                    "y",
                    style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 80,
                    color: Color(0xFFEEAF00)
                ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 360,
                  height: 257,
                  child: Image(image: AssetImage('assets/welcomeIMG.png')),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Find the product",
                  style: TextStyle(
                    fontSize:28,
                    fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "you want easily",
                  style: TextStyle(
                      fontSize:28,
                      fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 260,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "signup_screen");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        child: Text(
                            "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.black
                          ),
                        )

                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 260,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "login_screen");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black
                          ),
                        )

                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 260,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "home_screen");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        child: Text(
                          "Continue as a guest",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black
                          ),
                        )

                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
