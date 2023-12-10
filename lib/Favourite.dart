import 'package:ecommersapp2/Filters.dart';
import 'package:ecommersapp2/favour.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _FavState();
}


class _FavState extends State<Fav> {
  int selectedindex=0;
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
                  textColor: index==selectedindex?
                  Colors.white:null,
                  tileColor: index==selectedindex?
                  Colors.red:null,
                  onTap: () {
                    setState(() {
                      selectedindex=index;
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
    return DefaultTabController(length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back_ios_new),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search,size: 30,color: Colors.black),
          )],),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Favourites',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40,),),
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
                            onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) {
                               return Filt();
                             },));
                            },child: Row(
                            children: [
                              Icon(Icons.filter_list_sharp),
                              Text('   Filters'),

                            ],
                          ),
                          ),
                          InkWell(onTap: () {
                            Showmodel();
                          },
                            child: SizedBox(child: Row(children: [
                              Icon(CupertinoIcons.arrow_up_arrow_down,size: 15.0,color: Colors.black,),
                              Text('   Price:low to high')
                            ]),),
                          ),
                          InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Favour()));
                          },child: Icon(CupertinoIcons.square_grid_3x2_fill,size: 20,))
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(flex:2,child: Container(color: Color.fromARGB(255, 238, 235, 235),width: double.infinity,height: 800,child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(scrollDirection: Axis.vertical,
                  child: Stack(
                    children: [
                      SizedBox(
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                              child: Row(
                                children: [
                                  Container(decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Color.fromARGB(
                                      181, 183, 182, 182)),width:120,child: Image.asset('assets/navy.jpg',fit: BoxFit.fill)),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Mango'),
                                        Text('Pullover',style: TextStyle(fontWeight: FontWeight.w700),),
                                        Row(
                                          children: [
                                            Text('color: Blue'),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20),
                                              child: Text('Size:L'),
                                            )
                                          ],
                                        ),


                                        Row(
                                          children: [
                                            Text('51\$',style: TextStyle(fontWeight: FontWeight.w700),),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: [
                                                  RatingBar(itemCount: 5,
                                                    allowHalfRating: true,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    itemSize: 15,

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
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),),
                            SizedBox(height: 20,),
                            Container(height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                          Container(decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Color.fromARGB(
                                          181, 183, 182, 182)),width:120,child: Image.asset('assets/white.jpg',fit: BoxFit.fill)),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(height: 20,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.black),child: Center(child: Text('New',style: TextStyle(color: Colors.white,fontSize: 10))),),
                                      )

                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Dorothy perkins'),
                                        Text('Blouse',style: TextStyle(fontWeight: FontWeight.w700),),
                                        Row(children: [
                                          Text('color: Orange'),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: Text('Size:S'),
                                          )
                                        ],),

                                        Row(
                                          children: [
                                            Text('34\$',style: TextStyle(fontWeight: FontWeight.w700),),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: [
                                                  RatingBar(itemCount: 5,
                                                    allowHalfRating: true,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    itemSize: 15,

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
                                                  Text('(0)')
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),),
                            SizedBox(height: 20,),
                            Container(height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                              child: Row(
                                children: [
                                  Container(decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Color.fromARGB(
                                  181, 183, 182, 182)),width:120,child: Image.asset('assets/lines.jpg',fit: BoxFit.fill)),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Lost ink'),
                                        Text('T-shirts',style: TextStyle(fontWeight: FontWeight.w700),),
                                        Row(children: [
                                          Text('color: White'),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: Text('Size:L'),
                                          )
                                        ],),
                                        Row(
                                          children: [
                                            Text('12\$',style: TextStyle(fontWeight: FontWeight.w700),),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: [
                                                  RatingBar(itemCount: 5,
                                                    allowHalfRating: true,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    itemSize: 15,

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
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),),
                            Text('Currently not available',style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 20,),
                            Container(height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                          Container(decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Color.fromARGB(
                                          181, 183, 182, 182)),width:120,child: Image.asset('assets/check.jpg',fit: BoxFit.contain)),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(height: 20,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.red),child: Center(child: Text('-30%',style: TextStyle(color: Colors.white,fontSize: 10))),),
                                      )
                                        ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Topshop'),
                                        Text('Shirt',style: TextStyle(fontWeight: FontWeight.w700),),
                                        Row(children: [
                                          Text('color: Black'),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: Text('Size:S'),
                                          )
                                        ],),
                                        Row(
                                          children: [
                                            Text('51\$',style: TextStyle(fontWeight: FontWeight.w700),),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 60),
                                              child: Row(
                                                children: [
                                                  RatingBar(itemCount: 5,
                                                    allowHalfRating: true,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    itemSize: 15,

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
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),),
                            SizedBox(height: 20,),




                          ],
                        ),
                      ),
                      Positioned(right:0,top: 0,child: Column(
                        children: [
                          IconButton(onPressed: () {

                          }, icon: Icon(CupertinoIcons.multiply)),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
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
                      Positioned(right: 0,top: 120,child: Column(
                        children: [
                          IconButton(onPressed: () {

                          }, icon: Icon(CupertinoIcons.multiply)),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: CircleAvatar(radius: 20,backgroundColor: Colors.red,child: IconButton(icon: saf ? Icon(Icons.shopping_bag_outlined,color: Colors.white,)
                                : Icon(
                              Icons. shopping_bag,color: Colors.white,
                            ),onPressed: () {
                              setState(() {
                                saf=!saf;
                              });
                            },)),
                          ),
                        ],
                      )),

                      Positioned(right: 0,top: 380,child: Column(
                        children: [
                          IconButton(onPressed: () {

                          }, icon: Icon(CupertinoIcons.multiply)),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
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
                ),
              ),)),

            ]),


      ),
    );
  }
}
