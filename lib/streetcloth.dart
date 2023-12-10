import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Streetcl extends StatefulWidget {
  const Streetcl({super.key});

  @override
  State<Streetcl> createState() => _StreetclState();
}

class _StreetclState extends State<Streetcl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection:Axis.vertical ,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(height: 200, width: double.infinity,child: Image.asset('assets/models1.jpg',fit: BoxFit.fill,),
                ),
                Positioned(bottom: 20,left: 20,child: Text('Street cloths',style: GoogleFonts.bevan(color: Colors.white,fontSize: 30) ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sale',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                      Text('Super summer sale')

                    ],
                  ),
                  InkWell(onTap: () {

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
                          children: [SizedBox(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(
                                    89, 192, 192, 192)),child:
                                ClipRRect(borderRadius: BorderRadius.circular(15), child: Image.asset('assets/dailyw.png',fit: BoxFit.fill,)),),
                                Row(
                                  children: [
                                    RatingBar.builder(initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize:15,
                                      itemPadding: EdgeInsets.only(top: 10),

                                      itemBuilder: (context, index) {
                                      return Icon(Icons.star,color: Colors.amber,
                                        );
                                    }, onRatingUpdate: (value) {
                                      print(value);
                                    },),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10,left: 5),
                                      child: Text('(10)'),
                                    )
                                  ],
                                ),
                                Text('Dorothy Perkins'),
                                Text('Evening Dress',style:TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                                Row(
                                  children: [
                                    Text('15\$',style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 20),),
                                    Text(' 12\$',style: TextStyle(color: Colors.red,fontSize: 20),)
                                  ],
                                )

                              ],
                            ),
                          ),
                            Positioned(left: 10,top: 10,child: Container(height: 20,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.red),child: Center(child: Text('-20%',style: TextStyle( color: Colors.white,fontSize: 13))),))
                          ]
                      ),
                    ),
                    InkWell(onTap:() {

                    },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Stack(
                          children: [
                            SizedBox(
                              child: Column(
                                children: [
                                  Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(
                                      89, 192, 192, 192)),child:
                                  Image.asset('assets/sports.jpg',fit: BoxFit.contain,),),
                                  Row(
                                    children: [
                                      RatingBar.builder(initialRating: 5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize:15,
                                        itemPadding: EdgeInsets.only(top: 10),

                                        itemBuilder: (context, index) {
                                          return Icon(Icons.star,color: Colors.amber,
                                          );
                                        }, onRatingUpdate: (value) {
                                          print(value);
                                        },),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10,left: 5),
                                        child: Text('(10)'),
                                      )
                                    ],
                                  ),
                                  Text('Sitilly'),
                                  Text('Sport Dress',style:TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                                  Row(
                                    children: [
                                      Text('22\$',style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 20),),
                                      Text(' 19\$',style: TextStyle(color: Colors.red,fontSize: 20),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(left: 10,top: 10,child: Container(height: 20,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.red),child: Center(child: Text('-15%',style: TextStyle( color: Colors.white,fontSize: 13))),))

                          ],
                        ),
                      ),
                    ),
                    InkWell(onTap: () {

                    },
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(
                                      89, 192, 192, 192)),child:
                                  Image.asset('assets/gimmen.png',fit: BoxFit.cover,),),
                                  Row(
                                    children: [
                                      RatingBar.builder(initialRating: 5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize:15,
                                        itemPadding: EdgeInsets.only(top: 10),

                                        itemBuilder: (context, index) {
                                          return Icon(Icons.star,color: Colors.amber,
                                          );
                                        }, onRatingUpdate: (value) {
                                          print(value);
                                        },),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10,left: 5),
                                        child: Text('(10)'),
                                      )
                                    ],
                                  ),
                                  Text('Dorothy Perkins'),
                                  Text('Evening Dress',style:TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                                  Row(
                                    children: [
                                      Text('14\$',style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 20),),
                                      Text(' 11\$',style: TextStyle(color: Colors.red,fontSize: 20),)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Positioned(left: 10,top: 10,child: Container(height: 20,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.red),child: Center(child: Text('-20%',style: TextStyle( color: Colors.white,fontSize: 13))),))

                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                      Text('you\'ve never seen before!')

                    ],
                  ),
                  InkWell(onTap: () {

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
                          children: [SizedBox(
                            child: Column(
                              children: [
                                Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(
                                    89, 192, 192, 192)),child:
                                Image.asset('assets/model2.png'),),
                                Row(
                                  children: [
                                    RatingBar.builder(initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize:15,
                                      itemPadding: EdgeInsets.only(top: 10),

                                      itemBuilder: (context, index) {
                                        return Icon(Icons.star,color: Colors.amber,
                                        );
                                      }, onRatingUpdate: (value) {
                                        print(value);
                                      },),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10,left: 5),
                                      child: Text('(10)'),
                                    )
                                  ],
                                ),
                                Text('LuiVuiton'),
                                Text('Casual Dress',style:TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                                Row(
                                  children: [
                                    Text('30\$',style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 20),),
                                    Text(' 25\$',style: TextStyle(color: Colors.red,fontSize: 20),)
                                  ],
                                )
                              ],
                            ),
                          ),
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
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(
                                        89, 192, 192, 192)),child:
                                    Image.asset('assets/modelmen1.png'),),
                                    Row(
                                      children: [
                                        RatingBar.builder(initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize:15,
                                          itemPadding: EdgeInsets.only(top: 10),

                                          itemBuilder: (context, index) {
                                            return Icon(Icons.star,color: Colors.amber,
                                            );
                                          }, onRatingUpdate: (value) {
                                            print(value);
                                          },),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,left: 5),
                                          child: Text('(10)'),
                                        )
                                      ],
                                    ),
                                    Text('H&M'),
                                    Text('Formal',style:TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                                    Row(
                                      children: [
                                        Text('50\$',style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 20),),
                                        Text(' 45\$',style: TextStyle(color: Colors.red,fontSize: 20),)
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Positioned(left: 10,top: 10,child: Container(height: 20,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.black),child: Center(child: Text('New',style: TextStyle( color: Colors.white,fontSize: 13))),))

                          ],
                        ),
                      ),
                    ),
                    InkWell(onTap: () {


                    },
                      child: Stack(
                        children: [
                          SizedBox(
                            child: Column(
                              children: [
                                Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(
                                    89, 192, 192, 192)),child:
                                Image.asset('assets/navy.jpg'),),
                                Row(
                                  children: [
                                    RatingBar.builder(initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize:15,
                                      itemPadding: EdgeInsets.only(top: 10),

                                      itemBuilder: (context, index) {
                                        return Icon(Icons.star,color: Colors.amber,
                                        );
                                      }, onRatingUpdate: (value) {
                                        print(value);
                                      },),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10,left: 5),
                                      child: Text('(10)'),
                                    )
                                  ],
                                ),
                                Text('Sitilly'),
                                Text('Casual ',style:TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                                Row(
                                  children: [
                                    Text('33\$',style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 20),),
                                    Text(' 30\$',style: TextStyle(color: Colors.red,fontSize: 20),)
                                  ],
                                )
                              ],
                            ),
                          ),
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
