import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Newcollection extends StatefulWidget {
  const Newcollection({super.key});

  @override
  State<Newcollection> createState() => _NewcollectionState();
}

class _NewcollectionState extends State<Newcollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        Expanded(child: Stack(children: [
          SizedBox(width:double.infinity,child: Image.asset('assets/newcol.jpg',fit:BoxFit.fill ),),
        Positioned(bottom: 20,right:25,child: Text('New collection',style: GoogleFonts.albertSans(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
          Positioned(top: 30,left: 15,
            child: IconButton(onPressed: () {
              Navigator.of(context).pop();
            },icon: Icon(CupertinoIcons.back),),
          )
        ])),
        Expanded(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
                      child: Container(alignment: Alignment.center,
                        color: Colors.white,child: Text('Summer\nsale',style:GoogleFonts.albertSans(height: 1,fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red)),),
                    ),
                    Expanded(
                      child: Stack(fit: StackFit.expand,children: [Image.asset('assets/sunglass.jpg',fit: BoxFit.cover),
                      Positioned(left: 25,bottom: 20,child: Text('Black',style:GoogleFonts.albertSans(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white,)))]),
                    )
                  ],
                ),
              ),
              Expanded(child: Stack(children: [SizedBox(height:double.infinity,child: Image.asset('assets/menhoodie.png',fit: BoxFit.cover),),
              Center(child: Text('Men\'s\nhoddies',style:GoogleFonts.albertSans(height: 1,fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white,)))
              
              ]))
            ],
          ),
        )

      ]),

    );
  }
}
