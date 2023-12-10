import 'package:ecommersapp2/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bag extends StatefulWidget {
  const Bag({super.key});

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  void Showmodel(){
    showModalBottomSheet(context: context, builder: (context) {
      return Container(width: double.infinity,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(child: Container(height: 10,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey),)),
          ),
          Stack(
            children: [
              Container(height: 50,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25),topRight: Radius.circular(90),bottomRight: Radius.circular(90)),boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 1,color: Colors.black12,offset: Offset(0.0, 3.0))],color: Colors.white),child: TextFormField(decoration: InputDecoration(hintText: '   Enter your promo code',labelStyle: TextStyle(color: Colors.grey),border: InputBorder.none),),),
              Positioned(right: 0,child: Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.black),child: IconButton(onPressed:  () {
                Navigator.pop(context);
              },icon: Icon(CupertinoIcons.arrow_right,color: Colors.white,)),)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20),
            child: Text('Your Promo Codes',style: TextStyle(fontWeight: FontWeight.w700),),
          ),
              Flexible(flex: 1,
                child: ListView(
                  children: [
                    Container(height: 80.h,width: double.infinity.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(blurRadius: 30,spreadRadius: 2,color: Colors.black12,)],color: Colors.white),child:
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        SizedBox(height: 80.h,width: 70.w,child: Image.asset('assets/offer.jpg',fit: BoxFit.cover ),),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Text('Personal offer',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15.sp),),
                            Text('mypromocode2023',style: TextStyle(fontSize: 15.sp),)
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Text('6 days remaining',style: TextStyle(color: Colors.grey,fontSize: 10.sp),),
                            InkWell(onTap: () {
                              Navigator.pop(context);
                            },child: Container(height: 40.h,width: 80.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.red),child: Center(child: Text('Apply',style: TextStyle(color: Colors.white))),))

                          ],),
                        )
                      ]),),
                    SizedBox(height: 20,),
                    Container(height: 80.h,width: double.infinity.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(blurRadius: 30,spreadRadius: 2,color: Colors.black12,)],color: Colors.white),child:
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 80.h,width: 70.w,child: Image.asset('assets/summer.jpg',fit: BoxFit.cover ),),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Summer Sale',style: TextStyle(fontWeight: FontWeight.w700),),
                                Text('summer2023')
                              ],),
                          ),
                          SizedBox(width: 53.w,),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('23 days remaining',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                Container(height: 40.h,width: 80.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.red),child: Center(child: Text('Apply',style: TextStyle(color: Colors.white))),)

                              ],),
                          )
                        ]),),
                    SizedBox(height: 20,),
                    Container(height: 80.h,width: double.infinity.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(blurRadius: 30,spreadRadius: 2,color: Colors.black12,)],color: Colors.white),child:
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 80.h,width: 70.w,child: Image.asset('assets/off.jpg',fit: BoxFit.cover ),),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Personal offer',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10),),
                                Text('mypromocode2023')
                              ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('6 days remaining',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                Container(height: 40.h,width: 80.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.red),child: Center(child: Text('Apply',style: TextStyle(color: Colors.white))),)

                              ],),
                          )
                        ]),),



                  ],
                ),
              ),

        ]),
      ),);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.search,size: 30,color: Colors.black),
        )],),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Bag',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40,),),
                    SizedBox(height: 20,),
                    SizedBox(child: SingleChildScrollView( scrollDirection: Axis.vertical,
                      child: Column(
                          children: [
                        Container(height: 120,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(blurRadius: 30,spreadRadius: 2,color: Colors.black12,)],color: Colors.white),child:
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Container(decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Color.fromARGB(
                                181, 183, 182, 182)),width:120,child: Image.asset('assets/navy.jpg',fit: BoxFit.fill)),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                  Row(children: [
                                    Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 1,color: Colors.black12,offset: Offset(0.0, 3.0))],color: Colors.white),child: Center(
                                      child: IconButton(onPressed: () {

                                      }, icon: Icon(CupertinoIcons.minus,size: 15),),
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text('1'),
                                    ),
                                    Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 1,color: Colors.black12,offset: Offset(0.0, 3.0))],color: Colors.white),child: Center(
                                      child: IconButton(onPressed: () {

                                      }, icon: Icon(CupertinoIcons.plus,size: 15),),
                                    ))

                                  ],),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0,bottom: 10),
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(onPressed: () {


                                  }, icon: Icon(CupertinoIcons.ellipsis_vertical)),
                                  Text('51\$',style: TextStyle(fontWeight: FontWeight.w700),)
                                ],
                              ),
                            )
                          ]),),
                        SizedBox(height: 20,),
                        Container(height: 120,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(blurRadius: 30,spreadRadius: 2,color: Colors.black12,)],color: Colors.white),child:
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Color.fromARGB(
                                  181, 183, 182, 182)),width:120,child: Image.asset('assets/white.jpg',fit: BoxFit.fill)),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('T-shirt',style: TextStyle(fontWeight: FontWeight.w700),),
                                    Row(
                                      children: [
                                        Text('color: white'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('Size:L'),
                                        )
                                      ],
                                    ),
                                    Row(children: [
                                      Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 1,color: Colors.black12,offset: Offset(0.0, 3.0))],color: Colors.white),child: Center(
                                        child: IconButton(onPressed: () {

                                        }, icon: Icon(CupertinoIcons.minus,size: 15),),
                                      )),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text('1'),
                                      ),
                                      Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 1,color: Colors.black12,offset: Offset(0.0, 3.0))],color: Colors.white),child: Center(
                                        child: IconButton(onPressed: () {

                                        }, icon: Icon(CupertinoIcons.plus,size: 15),),
                                      ))

                                    ],),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0,bottom: 10),
                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(onPressed: () {

                                    }, icon: Icon(CupertinoIcons.ellipsis_vertical)),
                                    Text('30\$',style: TextStyle(fontWeight: FontWeight.w700),)
                                  ],
                                ),
                              )
                            ]),),
                        SizedBox(height: 20,),
                        Container(height: 120,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(blurRadius: 30,spreadRadius: 2,color: Colors.black12,)],color: Colors.white),child:
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),color: Color.fromARGB(
                                  181, 183, 182, 182)),width:120,child: Image.asset('assets/sports.jpg',fit: BoxFit.fill)),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Sports Dress',style: TextStyle(fontWeight: FontWeight.w700),),
                                    Row(
                                      children: [
                                        Text('color: Pink'),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('Size:L'),
                                        )
                                      ],
                                    ),
                                    Row(children: [
                                      Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 1,color: Colors.black12,offset: Offset(0.0, 3.0))],color: Colors.white),child: Center(
                                        child: IconButton(onPressed: () {

                                        }, icon: Icon(CupertinoIcons.minus,size: 15),),
                                      )),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text('1'),
                                      ),
                                      Container(height: 30,width: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 1,color: Colors.black12,offset: Offset(0.0, 3.0))],color: Colors.white),child: Center(
                                        child: IconButton(onPressed: () {

                                        }, icon: Icon(CupertinoIcons.plus,size: 15),),
                                      ))

                                    ],),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0,bottom: 10),
                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(onPressed: () {

                                    }, icon: Icon(CupertinoIcons.ellipsis_vertical)),
                                    Text('51\$',style: TextStyle(fontWeight: FontWeight.w700),),

                                  ],
                                ),
                              )
                            ]),),
                            SizedBox(height: 20,),

                          ]),
                    ),),
                    SizedBox(height: 150,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Stack(
                          children: [
                            Container(height: 50,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25),topRight: Radius.circular(90),bottomRight: Radius.circular(90)),boxShadow: [BoxShadow(blurRadius: 5,spreadRadius: 1,color: Colors.black12,offset: Offset(0.0, 3.0))],color: Colors.white),child: TextFormField(decoration: InputDecoration(hintText: 'Enter your promo code',labelStyle: TextStyle(color: Colors.grey),border: InputBorder.none),),),
                            Positioned(right: 0,child: Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.black),child: IconButton(onPressed:  () {
                             Showmodel();
                            },icon: Icon(CupertinoIcons.arrow_right,color: Colors.white,)),))

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total amount: '),
                              Text('132\$',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)
                            ],
                          ),
                        )
                      ],),
                    ),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Checkout();
                      },));
                    },
                        child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 1,offset: Offset(0.0, 1.0),spreadRadius: 1),]),child: Center(child: Text('CHECK OUT',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),))))


                  ]),


    ),
  ]
    ),
      ));
  }
}

