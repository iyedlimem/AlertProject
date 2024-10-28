// ignore_for_file: prefer_const_constructors

import 'package:alert/historiqueAlert.dart';
import 'package:alert/splashScreen.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children :
        [ Container(
          decoration: BoxDecoration(color: Color(0xFF528265),),
          child: Column(children: [
          Padding(
          padding: const EdgeInsets.fromLTRB(0,52,25,0),
          child: Row (
           
            children: [
             Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: const  Image(image: AssetImage('assets/shapes.png'))),
                const Spacer(),
             
                 SizedBox(
  width: 140,
  height: 39,
  child: SizedBox(
  width: 140,
  height: 39,
  child: Text(
    'Votre Profile',
   
    style: TextStyle(
      color: Colors.white.withOpacity(0.8600000143051147),
      fontSize: 24,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  ),
),
)
                ,
              
            ],
          ),
        ),
        Container(
  width: 120,
  height: 118,
  decoration: ShapeDecoration(
    image: DecorationImage(
      image: AssetImage('assets/profile_img.png'),
      fit: BoxFit.fill,
    ),
    shape: OvalBorder(),
  ),
),
Container(
  margin: EdgeInsets.fromLTRB(0, 13, 0, 13),
  child: Text(
    'Bienvenue, Iyed !',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
  ),
)
])
        ),
        
    Container(
      margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
      width: 354,
          height: 75,
      child: TextButton.icon(
        onPressed: (){},
        icon: const Icon(Icons.person,color: Colors.black,),
        style: TextButton.styleFrom(
      alignment: Alignment.centerLeft,
      padding:  EdgeInsets.symmetric(horizontal: 30.0),
      backgroundColor: Color(0xFFD2D9D1),
      textStyle: TextStyle(
    
      fontSize: 22,
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600)
      ),
      
      label: Text('Editer Profile',style: TextStyle(
      color: Colors.black)),
      ),
    ),
    Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      width: 354,
          height: 75,
      child: TextButton.icon(
        onPressed: (){},
        icon: const Icon(Icons.security,color: Colors.black,),
        style: TextButton.styleFrom(
      alignment: Alignment.centerLeft,
      padding:  EdgeInsets.symmetric(horizontal: 30.0),
      backgroundColor: Color(0xFFD2D9D1),
      textStyle: TextStyle(
    
      fontSize: 22,
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600)
      ),
      
      label: Text('Securitè et Confidentialité',style: TextStyle(
      color: Colors.black)),
      ),
    ),
    Container(
      
      margin: EdgeInsets.fromLTRB(0, 15, 0, 20),
      width: 354,
          height: 75,
          
      
        child: TextButton.icon(
          onPressed: (){
           Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Historique()),
                  );
          },
          icon: const Icon(Icons.help,color: Colors.black,),
          style: TextButton.styleFrom(
        alignment: Alignment.centerLeft,
        padding:  EdgeInsets.symmetric(horizontal: 30.0),
        backgroundColor: Color(0xFFD2D9D1),
        textStyle: TextStyle(
            
        fontSize: 22,
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600)
        ),
        
        label: Text('A Propos',style: TextStyle(
        color: Colors.black)),
        ),
     
    ),
    Container(
      
      child: GestureDetector(
        onTap: (){
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Splashscreen()),
                  );
        },
        child: Text(
          'Sign Out?',
          style: TextStyle(
        color: Color(0xFF00BD14),
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 0,
          ),
        ),
      ),
    ),
  Spacer(),
   
   

        ]),
    );
  }
}