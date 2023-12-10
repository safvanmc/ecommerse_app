import 'package:ecommersapp2/ratingandreviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Shortop extends StatefulWidget {
  const Shortop({super.key});

  @override
  State<Shortop> createState() => _ShortopState();
}

class _ShortopState extends State<Shortop> {
  int selectedindex=0;
  void Showmodel(){
    showModalBottomSheet(elevation:5,context: context, builder: (context) {
      return Container(height:300,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),color: Colors.white),child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Container(height: 10,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey),),
        ),
        Text('Selected size',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(width: double.infinity,height: 100,
                  child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(width: 100,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2)),child: Center(child: Text('XS')),),
                          Container(width: 100,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2)),child: Center(child: Text('L')),)

                        ],
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(width: 100,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2)),child: Center(child: Text('S')),),
                          Container(width: 100,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2)),child: Center(child: Text('XL')),)

                        ],
                      ), Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(width: 100,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2)),child: Center(child: Text('M')),),
                          SizedBox(width: 100,height: 40,)

                        ],
                      )
                    ],
                  )
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Size info'),
                  Icon(Icons.arrow_forward_ios,size: 15,)
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(height: 40,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 1,offset: Offset(0.0, 1.0),spreadRadius: 1),]),child: Center(child: Text('ADD TO CART',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),))),
            )

          ],
        ),
      ]),);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, 60),
        child: Container(decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(offset: Offset(0, 1),blurRadius: 1,color: Colors.grey)]),
          child: AppBar(
            leading: InkWell(onTap: () {
              Navigator.of(context).pop();
            },child: Icon(Icons.arrow_back_ios_new)),
            title: Text('Short dress',style: TextStyle(fontWeight: FontWeight.w700)),
            centerTitle: true,
            actions: [IconButton(onPressed: () {

            }, icon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.share),
            ))],
          ),
        ),
      ),
      body:  SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: SingleChildScrollView(scrollDirection:Axis.horizontal ,
                child: Row(
                    children: [
                  Container(height: 200,width: 300,color: Color.fromARGB(181, 229, 226, 226),child: Image.asset('assets/black.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(height: 200,width: 400,color: Color.fromARGB(
                        221, 159, 204, 201),child: Image.asset('assets/black2.png'),),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween
                ,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap: () {
                        Showmodel();
                      },
                        child: Container(height: 40,width: 130,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,)),padding: EdgeInsets.all(10),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Size'),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),),
                      ),
                      Container(height: 40,width: 130,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,)),padding: EdgeInsets.all(10),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Black'),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),),
                      Container(height: 40,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1,offset: Offset(0, 1.0))]),child: Icon(Icons.favorite_border,),)
                    ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('H&M',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                          Text('\$19.99',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                        ]),
                  ),
                  Text('Short black dress',style: TextStyle(color: Colors.grey),),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Review();
                    },));
                  },
                    child: Row(
                      children: [
                        RatingBar(itemCount: 5,
                          allowHalfRating: true,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 20,

                          ratingWidget: RatingWidget(
                              full: const Icon(Icons.star, color: Colors.amber),
                              half: const Icon(
                                Icons.star_half,
                                color: Colors.amber,
                              ),
                              empty: const Icon(
                                Icons.star_outline,
                                color: Colors.grey,
                              )
                          ),
                          onRatingUpdate: (value) {
                            print(value);
                          },),
                        Text('  (10)',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Short dress in soft cotton jersy with decorative buttons down the front and a wide, frill-trimmed'),
                  )
                ],
              ),
            ),
            Container(padding: EdgeInsets.all(20),decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 2,spreadRadius: 2,offset: Offset.fromDirection(5.5)
            )]),height: 80,child: Center(child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 1,offset: Offset(0.0, 1.0),spreadRadius: 1),]),child: Center(child: Text('ADD TO CART',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),))))),

            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping info'),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Support'),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('You can also like this',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),
                  Text('12 items',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            Padding(//new
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 10),
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
                                  Image.asset('assets/modelmen1.png',fit: BoxFit.contain,),),
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
                                      // Text('50\$',style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 20),),
                                      Text(' 45\$',style: TextStyle(color: Colors.black,fontSize: 20),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(left: 10,top: 10,child: Container(height: 20,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.black),child: Center(child: Text('New',style: TextStyle( color: Colors.white,fontSize: 13))),))

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
                                  Text('Sports',style:TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                                  Row(
                                    children: [
                                      // Text('14\$',style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 20),),
                                      Text(' 10\$',style: TextStyle(color: Colors.red,fontSize: 20),)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Positioned(left: 10,top: 10,child: Container(height: 20,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:  Colors.black),child: Center(child: Text('New',style: TextStyle( color: Colors.white,fontSize: 13))),))

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
