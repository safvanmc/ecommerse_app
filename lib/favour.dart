import 'package:ecommersapp2/Filters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Favour extends StatefulWidget {
  const Favour({super.key});

  @override
  State<Favour> createState() => _FavourState();
}

class _FavourState extends State<Favour> {
  int selectedIndex = 0;
  bool toggle = false;
  bool saf=false;
  bool saf1=false;
  bool saf2=false;
  void Showmodel(){
    showModalBottomSheet(context: context, builder: (context) {
      return Container(height:300,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Container(height: 10,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey),),
        ),
        Text('Sort by',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        SizedBox(width: double.infinity,height: 200,
            child:ListView.builder(itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Price:low to high'),
                  textColor: index==selectedIndex?
                  Colors.white:null,
                  tileColor: index==selectedIndex?
                  Colors.red:null,
                  onTap: () {
                    setState(() {
                      selectedIndex=index;
                    });
                    Navigator.pop(context);
                  },
                );
              },
            )
        ),
      ]),);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 4,initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Favourite',style: TextStyle(fontWeight: FontWeight.w700)),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search,size: 30,color: Colors.black),
          )],),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
            child: Column(children: [
              TabBar(labelPadding: EdgeInsets.all(5),
                tabs: [

                  Container(height: 35,width: 110,decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black),child: Center(child: Text('Summer',style: TextStyle(color: Colors.white),))),
                  Container(height: 35,width: 110,decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),child: Center(child: Text('T-shirts',style: TextStyle(color: Colors.white),))),
                  Container(height: 35,width: 110,decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),child: Center(child: Text('Shirts',style: TextStyle(color: Colors.white),))),
                  Container(height: 35,width: 110,decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),child: Center(child: Text('Blouses',style: TextStyle(color: Colors.white),))),
                ],isScrollable: true,
                indicatorColor: Colors.transparent,
              ),
              Container(color: Color.fromARGB(150, 238, 235, 235),height: 30,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InkWell(
                      onTap:  () {
                        Filt();
                      },child: Row(
                      children: [
                        Icon(Icons.filter_list_sharp),
                        Text('   Filters'),

                      ],
                    ),
                    ),
                    InkWell(onTap: () {
                      return Showmodel();
                    },
                      child: SizedBox(child: Row(children: [
                        Icon(CupertinoIcons.arrow_up_arrow_down,size: 15.0,color: Colors.black,),
                        Text('   Price:low to high')
                      ]),),
                    ),
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },child: Icon(CupertinoIcons.square_grid_3x2_fill,size: 20,))
                  ],
                ),
              ),
            ],),
          ),
          Expanded(flex: 1,
            child: Container(color: Color.fromARGB(255, 238, 235, 235),width:double.infinity,child:
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 20),
              child: SingleChildScrollView(scrollDirection:Axis.vertical ,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              SizedBox(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(height: 200,width: 165,decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(181, 183, 182, 182)),child: Image.asset('assets/whitemale.png',fit: BoxFit.contain,)),
                                  Row(
                                    children: [
                                      RatingBar(itemCount: 5,
                                        allowHalfRating: true,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        itemSize: 18,

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
                                      Text('(3)')
                                    ],
                                  ),
                                  Text('Mango',style: TextStyle(color: Colors.grey)),
                                  Text('T-Shirt SPANISH',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                                  Row(
                                    children: [
                                      Text('color: Blue'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Text('Size:L'),
                                      )
                                    ],
                                  ),
                                  Text('9\$',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),

                                ],
                              )),
                              Positioned(right: 0,top: 0,child: Column(
                                children: [
                                  IconButton(onPressed: () {

                                  }, icon: Icon(CupertinoIcons.multiply)),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 120),
                                    child: CircleAvatar(radius: 20,backgroundColor: Colors.red,child: IconButton(icon: toggle ? Icon(Icons.shopping_bag_outlined,color: Colors.white,)
                                        : Icon(
                                      Icons.shopping_bag,color: Colors.white,
                                    ),onPressed: () {
                                      setState(() {
                                        toggle=!toggle;
                                      });
                                    },)),
                                  ),

                                ],
                              )),
                            ],
                          ),
                          Stack(
                            children: [
                              SizedBox(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    Container(height: 200,width: 165,decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(181, 183, 182, 182)),child: Image.asset('assets/tshirtwhite.png',fit: BoxFit.contain,)),
                                    Positioned(top: 10,left: 10,child: Container(height: 20,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),child: Center(child: Text('-20%',style: TextStyle(color: Colors.white,fontSize: 12))),))]),
                                  Row(
                                    children: [
                                      RatingBar(itemCount: 5,
                                        allowHalfRating: true,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        itemSize: 18,

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
                                      Text('(10)')
                                    ],
                                  ),
                                  Text('Dorothy perkins',style: TextStyle(color: Colors.grey)),
                                  Text('Blouse',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                                  Row(children: [
                                    Text('color: Orange'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text('Size:S'),
                                    )
                                  ],),
                                  Row(
                                    children: [
                                      Text('21\$',style: TextStyle(decoration: TextDecoration.lineThrough,decorationColor: Colors.grey,color: Colors.grey),),
                                      Text('14\$',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.red)),
                                    ],
                                  ),

                                ],
                              )),
                              Positioned(right: 0,top: 0,child: Column(
                                children: [
                                  IconButton(onPressed: () {

                                  }, icon: Icon(CupertinoIcons.multiply)),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 120),
                                    child: CircleAvatar(radius: 20,backgroundColor: Colors.red,child: IconButton(icon: saf ? Icon(Icons.shopping_bag_outlined,color: Colors.white,)
                                        : Icon(
                                      Icons.shopping_bag,color: Colors.white,
                                    ),onPressed: () {
                                      setState(() {
                                        saf=!saf;
                                      });
                                    },)),
                                  ),
                                ],
                              )),

                            ],
                          ),

                        ],),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          Stack(
                            children: [
                              SizedBox(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(height: 200,width: 165,decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(181, 183, 182, 182)),child: Image.asset('assets/shirtmen.png',fit: BoxFit.contain,)),
                                  Row(
                                    children: [
                                      RatingBar(itemCount: 5,
                                        allowHalfRating: true,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        itemSize: 18,

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
                                      Text('(3)')
                                    ],
                                  ),
                                  Text('Mango',style: TextStyle(color: Colors.grey)),
                                  Text('Shirt',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                                  Row(children: [
                                    Text('color: White'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text('Size:L'),
                                    )
                                  ],),
                                  Text('19\$',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),

                                ],
                              )),
                              Positioned(right: 0,top: 160,child: Container(width: 165,height: 40,decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:  Radius.circular(10))),child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('sorry,this item is\ncurrently sold out'),
                                ],
                              ),)),
                              Positioned(right: 0,top: 0,
                                child: IconButton(onPressed: () {

                                }, icon: Icon(CupertinoIcons.multiply)),
                              ),

                            ],
                          ),
                          Stack(
                            children: [
                              SizedBox(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(children: [Container(height: 200,width: 165,decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromARGB(181, 183, 182, 182)),child: Image.asset('assets/blouse.png',fit: BoxFit.contain,)),
                                    Positioned(top: 10,left: 10,child: Container(height: 20,width: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),child: Center(child: Text('-20%',style: TextStyle(color: Colors.white,fontSize: 12))),)),
                                  ]),
                                  Row(
                                    children: [
                                      RatingBar(itemCount: 5,
                                        allowHalfRating: true,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        itemSize: 18,

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
                                      Text('(10)')
                                    ],
                                  ),
                                  Text('Dorothy perkins',style: TextStyle(color: Colors.grey)),
                                  Text('Light blouse',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                                  Row(children: [
                                    Text('color: Green'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text('Size:S'),
                                    )
                                  ],),
                                  Row(
                                    children: [
                                      Text('21\$',style: TextStyle(decoration: TextDecoration.lineThrough,decorationColor: Colors.grey,color: Colors.grey),),
                                      Text('19\$',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.red)),
                                    ],
                                  ),

                                ],
                              )),
                              Positioned(right: 0,top: 0,child: Column(
                                children: [
                                  IconButton(onPressed: () {

                                  }, icon: Icon(CupertinoIcons.multiply)),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 120),
                                    child: CircleAvatar(radius: 20,backgroundColor: Colors.red,child: IconButton(icon: saf2 ? Icon(Icons.shopping_bag_outlined,color: Colors.white,)
                                        : Icon(
                                      Icons.shopping_bag,color: Colors.white,
                                    ),onPressed: () {
                                      setState(() {
                                        saf2=!saf2;
                                      });
                                    },)),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ],),
                      )
                    ]),
              ),
            ),),
          )

        ]),
      ),
    );
  }
}
