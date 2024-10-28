// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Dashbord  extends StatelessWidget {
  const Dashbord ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children :
        [ Padding(
          padding: const EdgeInsets.fromLTRB(0,52,25,0),
          child: Row (
           
            children: [
             const  Image(image: AssetImage('assets/shapes.png')),
                const Spacer(),
             
                 SizedBox(
  width: 200,
  height: 40,
  child: Text(
    '! مرحبا بيك 🍀',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black.withOpacity(0.8600000143051147),
      fontSize: 32,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  ),
)
                ,
              
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
  width: 351,
  height: 181,
  child: Stack(
    children: [
      Positioned(
        left: 0,
        top: 0,
        child: Container(
          width: 351,
          height: 181,
          decoration: ShapeDecoration(
            color: const Color(0xFFD2D9D1),
            shape: RoundedRectangleBorder(
              side:const BorderSide(width: 1, color: Color(0xFF528265)),
              borderRadius: BorderRadius.circular(26),
            ),
            shadows: [
             
              BoxShadow(
                 color:  Color(0x3F000000),
                 blurRadius:4,
                  offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
        ),
      ),
      const Positioned(
        left: 37.68,
        top: 26,
        child: SizedBox(
          width: 279.61,
          height: 43,
          child: Text(
            'Points Collectès:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ),
    const   Positioned(
        left: 119,
        top: 97,
        child: Text(
          '+ 650',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ),
    ],
  ),
),
Align(
  alignment: FractionalOffset.topLeft,
  child: Container(
    margin: const EdgeInsets.fromLTRB(30, 40, 0,0),
  child: SizedBox(
  width: 325,
  height: 35,
  child: Text(
    'Le rapport de la semaine',
    
    style: TextStyle(
      color: Colors.black.withOpacity(0.8600000143051147),
      fontSize: 24,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  ),
),
),
),
Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
               width: 119,
               height: 203,
                
                decoration: BoxDecoration(
                  color:const Color(0xFF06441F),
                  borderRadius: BorderRadius.circular(16)
                ),
                child:  Column(
                  children: [
                    Container(
                      width: 90,
                      height: 80,
                      margin: EdgeInsets.all(15),
                      child: Image(image: AssetImage('assets/plant.png'))),
                    SizedBox(
  width: 101,
  height: 82.58,
  child: Text(
    '6 plantes arrachées signalées',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  ),
)
                  ],
                ),
                
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
               width: 119,
               height: 203,
                
                decoration: BoxDecoration(
                  color:const Color(0xFFD31212),
                  borderRadius: BorderRadius.circular(16)
                ),
                child:  Column(
                  children: [
                    Container(
                      width: 90,
                      height: 80,
                      margin: EdgeInsets.all(15),
                      child: Image(image: AssetImage('assets/fire.png'))),
                    SizedBox(
  width: 101,
  height: 82.58,
  child: Text(
    ' 2 incendies signalés',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  ),
)
                  ],
                ),
                
              ),
              Container(
               margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
               width: 119,
               height: 203,
                
                decoration: BoxDecoration(
                  color:const Color(0xFF6F831E),
                  borderRadius: BorderRadius.circular(16)
                ),
                child:  Column(
                  children: [
                    Container(
                      width: 90,
                      height: 80,
                      margin: EdgeInsets.all(15),
                      child: Image(image: AssetImage('assets/trash.png'))),
                    SizedBox(
  width: 101,
  height: 82.58,
  child: Text(
    '6 poubelles signalées',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  ),
)
                  ],
                ),
                
              ),
              Container(
               margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
               width: 119,
               height: 203,
                
                decoration: BoxDecoration(
                  color:const Color(0xFF06441F),
                  borderRadius: BorderRadius.circular(16)
                ),
                child:  Column(
                  children: [
                    Container(
                      width: 90,
                      height: 80,
                      margin: EdgeInsets.all(15),
                      child: Image(image: AssetImage('assets/plant.png'))),
                    SizedBox(
  width: 101,
  height: 82.58,
  child: Text(
    '6 plantes arrachées signalées',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  ),
)
                  ],
                ),
                
              ),
              
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
  width: 359,
  height: 57,
  child: Stack(
    children: [
      Positioned(
        left: 0,
        top: 0,
        child: Container(
          width: 359,
          height: 57,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 8,
                offset: Offset(4, 4),
                spreadRadius: 0,
              )
            ],
          ),
        ),
      ),
      Positioned(
        left: 1,
        top: 18,
        child: SizedBox(
          width: 354,
          height: 25,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Conseil du jour',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5899999737739563),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: ':Réduisez. Réutilisez. Recyclez.',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5899999737739563),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  ),
)

        ]
      ),

    );
  }
}