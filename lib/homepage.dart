import 'package:ecommersapp2/Login.dart';
import 'package:ecommersapp2/newcollection.dart';
import 'package:ecommersapp2/signup.dart';
import 'package:ecommersapp2/streetcloth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [SizedBox(height: 500,width: double.infinity,
                child:Image.asset("assets/fashioncover.jpg",fit: BoxFit.fill),
              ),
                Positioned(bottom: 20,left: 20,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fashion\nSale',style: GoogleFonts.bevan(fontSize: 40,color: Colors.white),),
                      InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Newcollection();
                        },));
                      },
                        child: Container(height: 30,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                        child: Center(child: Text('Check',style: TextStyle(color: Colors.white))),),
                      )

                    ],
                  ),
                ),

              ],

            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                      Text('you\'ve never seen before!')

                    ],
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Streetcl();
                    },));
                  },child: Text('View all'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(onTap: () {

                    },
                      child: Stack(
                        children: [Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(
                            89, 192, 192, 192)),child:
                          Image.asset('assets/tshirtwhite.png'),),
                          Positioned(left: 10,top: 10,child: Container(height: 20,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.black),child: Center(child: Text('New',style: TextStyle( color: Colors.white,fontSize: 13))),))
                        ]
                      ),
                    ),
                    InkWell(onTap:() {

                    },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Stack(
                          children: [
                            Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(
                                89, 192, 192, 192)),child:
                            Image.asset('assets/modelmen1.png'),),
                            Positioned(left: 10,top: 10,child: Container(height: 20,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.black),child: Center(child: Text('New',style: TextStyle( color: Colors.white,fontSize: 13))),))

                          ],
                        ),
                      ),
                    ),
                    InkWell(onTap: () {

                    },
                      child: Stack(
                        children: [
                          Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(
                              89, 192, 192, 192)),child:
                          Image.asset('assets/model2.png'),),
                          Positioned(left: 10,top: 10,child: Container(height: 20,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.black),child: Center(child: Text('New',style: TextStyle( color: Colors.white,fontSize: 13))),))

                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
