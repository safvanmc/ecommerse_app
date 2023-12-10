import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:image_picker/image_picker.dart';


class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  bool value= false;
  final controller=ScrollController();
  int selectedindex=0;
  XFile? pickedFile;
  File? image;


  void Showmodel(){
    showModalBottomSheet(isScrollControlled: true,
        isDismissible: true,
    context: context, builder: (context) {
      return Container(height: 650,width: double.infinity,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Container(height: 10,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey),),
        ),
        Text('What is your rate?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: double.infinity,height: 100,
                  child:Center(
                    child: RatingBar(itemCount: 5,
                      allowHalfRating: true,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemSize: 50,

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
                  ),
              ),
              Center(child: Text('Please share your opinion\n       about the product',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: Container(padding:EdgeInsets.only(left: 10) ,height: 150,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,boxShadow: [BoxShadow(spreadRadius: 1,blurRadius: 5,color: Colors.grey)]),child: TextFormField(decoration: InputDecoration(border: InputBorder.none,hintText: 'Your review',labelStyle: TextStyle(color: Colors.grey)),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: Row(
                  children: [
                    // Expanded(child: Container(height: 100,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,boxShadow: [BoxShadow(spreadRadius: 1,blurRadius: 5,color: Colors.grey)]),
                    //     child: image==null? Text('no Image'): Image.file(image!))),

                        Container(height: 100,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,boxShadow: [BoxShadow(spreadRadius: 1,blurRadius: 5,color: Colors.grey)]),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              CircleAvatar(radius:20 ,backgroundColor: Colors.red,
                                child: Center(
                                  child: IconButton(
                                      onPressed: () async {
                                       ImagePicker picker= ImagePicker();
                                       pickedFile =await picker.pickImage(source: ImageSource.gallery);
                                       setState(() {
                                         image=File(pickedFile!.path);
                                       });
                                  }, icon: Icon(CupertinoIcons.camera_fill,color: Colors.white,)),
                                ),
                              ),
                              Text('Add your photos',style: TextStyle(fontSize: 10),)
                            ],
                          ),
                        ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: InkWell( onTap: () {
                  Navigator.of(context).pop();
                },child: Container(height: 40,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 1,offset: Offset(0.0, 1.0),spreadRadius: 1),]),child: Center(child: Text('SEND REVIEW',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)))),
              )

            ],
          ),
        ),

      ]),);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back_ios_new)),
      ),
      body:Padding(
        padding: const EdgeInsets.only(top:20),
        child: Column( mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 110),
            child: Text('Rating&Reviews',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900),),
          ),
          Expanded(
            child: SizedBox(
              child: FadingEdgeScrollView.fromScrollView(
                child: ListView(controller: controller,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('4.3',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900)),
                              Text('23 ratings',style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Row(
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                Row(
                                  children: [
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  SizedBox(width: 10,),
                                    Container(height: 10,width: 120,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.red),),
                                    Text('  12',style: TextStyle(color: Colors.grey),)
                                ],),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  SizedBox(width: 10,),
                                  Container(height: 10,width: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.red),),
                                  SizedBox(width: 71,),
                                  Text(' 5',style: TextStyle(color: Colors.grey),)
                                ],),
                                Row(children: [
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  SizedBox(width: 10,),
                                  Container(height: 10,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.red),),
                                  SizedBox(width: 81,),
                                  Text(' 4',style: TextStyle(color: Colors.grey),)],),
                                  Row(children: [
                                    Icon(Icons.star,color: Colors.amber,size: 19,),
                                    Icon(Icons.star,color: Colors.amber,size: 19,),
                                    SizedBox(width: 10,),
                                    Container(height: 10,width: 20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.red),),
                                    SizedBox(width: 111,),
                                    Text(' 2',style: TextStyle(color: Colors.grey),)

                                  ],),

                                Row(children: [
                                  Icon(Icons.star,color: Colors.amber,size: 19,),
                                  SizedBox(width: 10,),
                                  Container(height: 10,width: 10,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.red),),
                                  SizedBox(width: 121,),
                                  Text(' 0',style: TextStyle(color: Colors.grey),)
                                ],),
                                ],),

                            ],
                          )
                        ],),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          Text('8 reviews',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20 ),),
                          Row(
                            children: [
                              Checkbox(activeColor: Colors.red,
                                value: this.value, onChanged: (value) {
                                setState(() {
                                  this.value = value!;

                                });
                              },),
                              Text('With photo')
                            ],
                          ),
                        ],),
                      ],
                    ),
                  ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30,bottom: 20,left: 40,right: 20),
                              child: Container(padding: EdgeInsets.all(20),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 2,blurRadius: 10),]),child:
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Helena Moore',style: TextStyle(fontWeight: FontWeight.w700)),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.amber,size: 19,),
                                            Icon(Icons.star,color: Colors.amber,size: 19,),
                                            Icon(Icons.star,color: Colors.amber,size: 19,),
                                            Icon(Icons.star,color: Colors.amber,size: 19,),
                                            Icon(Icons.star_border_outlined,color: Colors.grey,size: 19,),
                                          ],),
                                        Text('June 5,2019',style: TextStyle(color: Colors.grey),)

                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                                      child: Text('The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.'),
                                    )


                                    ,Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('Helpful  ',style: TextStyle(color: Colors.grey),),
                                        Icon(Icons.thumb_up,color: Colors.grey,)
                                      ],
                                    )
                                  ]),),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 40,right: 20,bottom: 20),
                              child: Stack(
                                children: [
                                  Container(padding: EdgeInsets.all(20),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 2,blurRadius: 10),]),child:
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Kate Doe',style: TextStyle(fontWeight: FontWeight.w700)),
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.star,color: Colors.amber,size: 19,),
                                                Icon(Icons.star,color: Colors.amber,size: 19,),
                                                Icon(Icons.star,color: Colors.amber,size: 19,),
                                                Icon(Icons.star,color: Colors.amber,size: 19,),
                                                Icon(Icons.star_border_outlined,color: Colors.grey,size: 19,),
                                              ],),
                                            Text('June 5,2019',style: TextStyle(color: Colors.grey),)

                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Text('The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.'),
                                        )

                                        ,Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text('Helpful  ',style: TextStyle(color: Colors.grey),),
                                            Icon(Icons.thumb_up,color: Colors.grey,)
                                          ],
                                        )
                                      ]),),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(left: 20,top: 10,child: CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/sunglass.jpg'),)),
                        Positioned(left: 20,top: 360,child: CircleAvatar(radius: 20,backgroundImage: AssetImage('assets/sunglass.jpg'),)),



                      ],
                    ),
                ],),
              ),
            ),
          ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: FloatingActionButton.extended(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  backgroundColor: Colors.red,
                  icon: Icon(CupertinoIcons.pen,color: Colors.white,),onPressed: () {
                    Showmodel();
                },
                  label: Text('Write a review',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700)),),
              )

        ]),
      ),

    );
  }
}

