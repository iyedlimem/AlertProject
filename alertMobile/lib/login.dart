// ignore_for_file: prefer_const_constructors

import 'package:alert/homePage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'registerPage.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool incorrect = false; 

  void _getUser(email,password) async{

    try {
      print(email);
      print(password);
      Response response = await get(Uri.parse('http://localhost:8081/auth/authenticate?email=$email&password=$password'));
   
   Map data = jsonDecode(response.body);
   print (data['token']);
   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
   
      
    } catch (e) {
      print('Verify your email or password');
      setState(() {
        incorrect = true;
      });

    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Ensures the screen resizes to avoid overflow
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image(image: AssetImage('assets/shapes.png')),
            ),
            Text(
              'مرحبا بيك في',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.86),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(
              width: 229,
              height: 70,
              child: Text(
                'غابتنا',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.73),
                  fontSize: 48,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Image(image: AssetImage('assets/logo_login.png')),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200, // Background color
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0), // Adjusts the padding inside the field
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // Rounded corners
                    borderSide: BorderSide(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // Same rounded corners when focused
                    borderSide: BorderSide(
                      color: Colors.black, // Border color when focused
                      width: 1.0, // Border width when focused
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Mot de passe',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200, // Background color
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0), // Adjusts the padding inside the field
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // Rounded corners
                    borderSide: BorderSide(
                      color: Colors.black, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // Same rounded corners when focused
                    borderSide: BorderSide(
                      color: Colors.black, // Border color when focused
                      width: 1.0, // Border width when focused
                    ),
                  ),
                ),
              ),
            ),
            if (incorrect)
           Container(
            margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
             child: SizedBox(
                width: 268,
                height: 13,
                child: Text.rich(
                  TextSpan(
                        text: 'Cordonnèes Incorrectes !',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.87),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                  ),
                ),
           ),
            
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
              child: GestureDetector(
                onTap: () {
                  _getUser(emailController.text, passwordController.text);
                  
                },
                child: Container(
                  width: 322,
                  height: 53,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 322,
                          height: 53,
                          decoration: ShapeDecoration(
                            color: Color(0xFF37B843),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 97.31,
                        top: 13.25,
                        child: SizedBox(
                          width: 125.62,
                          height: 26.50,
                          child: Text(
                            'Se Connecter',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 268,
              height: 28,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Vous n’avez pas de compte ?’',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.87),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF12A1B4),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      
                      text: 'S’inscrire',
                      recognizer: TapGestureRecognizer()..onTap=()=>
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  )
                ,
                      style: TextStyle(
                        color: Color(0xFF00E0FF),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
