import 'package:ecommersapp2/brand.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Filt extends StatefulWidget {
  const Filt({super.key});

  @override
  State<Filt> createState() => _FiltState();
}

class _FiltState extends State<Filt> {
  RangeValues values=const RangeValues(11, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels= RangeLabels(values.start.toString(),values.end.toString());
    return  Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, 50),
        child: Container(decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 1),blurRadius: 1,color: Colors.grey)]),
          child: AppBar(
            leading: InkWell(onTap: () {
              Navigator.of(context).pop();
            },child: Icon(Icons.arrow_back_ios_new)),
             title: Text('Filters',style: TextStyle(fontWeight: FontWeight.w700)),
            centerTitle: true,
            titleSpacing: 100,



            ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Expanded(flex: 2,
          child: Container(height: double.infinity,
             width: double.infinity,color: Color.fromARGB(200, 238, 235, 235),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(padding:EdgeInsets.only(top: 15,left: 20),height: 50,child: Text('Price range',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                Expanded(flex: 1,child: Container(height: double.infinity,width: double.infinity,decoration: BoxDecoration(color: Colors.white,boxShadow:[BoxShadow(color: Colors.grey,offset: Offset(0, 1),blurRadius: 2.r)]),child:
                  Stack(
                    children: [
                      RangeSlider(
                        values: values,
                        min: 10,
                        max: 100,
                        labels: labels,
                        activeColor: Colors.red,
                        onChanged: (newvalues) {
                          setState(() {
                            values=newvalues;
                          });
                        },
                      ),
                      Positioned(top: 15.h ,left: 15.w,child: Text(' \$78                                                                       \$143',style: TextStyle(fontSize: 15.sp),)),

                    ],
                  ))),
                Container(padding: EdgeInsets.only(top: 15,left: 20),height: 50,child: Text('Colors',style: TextStyle(fontWeight: FontWeight.w700))),
                Expanded(flex: 1,child: Container(height: double.infinity,width: double.infinity,decoration: BoxDecoration(color: Colors.white,boxShadow:[BoxShadow(color: Colors.grey,offset: Offset(0, 1),blurRadius: 2)]),child:
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(radius: 20,backgroundColor: Colors.black),
                      CircleAvatar(radius: 20,backgroundColor: Color.fromARGB(
                          181, 183, 182, 182)),
                      CircleAvatar(radius: 20,backgroundColor: Color.fromARGB(
                          255, 197, 4, 4)),
                      CircleAvatar(radius: 20,backgroundColor: Color.fromARGB(
                          255, 107, 107, 93)),
                      CircleAvatar(radius: 20,backgroundColor: Color.fromARGB(
                          255, 241, 183, 92)),
                      CircleAvatar(radius: 20,backgroundColor: Color.fromARGB(
                          255, 2, 2, 56)),
                    ],
                  ),)),
                Container(padding: EdgeInsets.only(top: 15.h,left: 20.w),height: 50.h,child: Text('Sizes',style: TextStyle(fontWeight: FontWeight.w700),)),
                Expanded(flex:1,child: Container(height: double.infinity,width: double.infinity,decoration: BoxDecoration(color: Colors.white,boxShadow:[BoxShadow(color: Colors.grey,offset: Offset(0, 1),blurRadius: 2)]),child:
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
                    child: Row(
                      children: [
                        Container(height: 40.h,width: 40.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),border:Border.all(width: 2.w,color: Colors.grey)),child: Center(child: Text('XS',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15.sp),)),),
                        SizedBox(width: 20.w,),
                        Container(height: 40.h,width: 40.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),border:Border.all(width: 2.w,color: Colors.grey)),child: Center(child: Text('S',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15.sp))),),
                        SizedBox(width: 20.w,),
                        Container(height: 40.h,width: 40.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),border:Border.all(width: 2.w,color: Colors.grey)),child: Center(child: Text('M',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15.sp))),),
                        SizedBox(width: 20.w,),
                        Container(height: 40.h,width: 40.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),border:Border.all(width: 2.w,color: Colors.grey)),child: Center(child: Text('L',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15.sp))),),
                        SizedBox(width: 20.w,),
                        Container(height: 40.h,width: 40.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),border:Border.all(width: 2.w,color: Colors.grey)),child: Center(child: Text('XL',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15.sp))),),

                      ],
                    ),
                  ),)),
                Container(padding: EdgeInsets.only(top: 15,left: 20),height:50,child: Text('Category',style: TextStyle(fontWeight: FontWeight.w700))),
                Expanded(flex: 2,child: Container(height: double.infinity,width: double.infinity,decoration: BoxDecoration(color: Colors.white,boxShadow:[BoxShadow(color: Colors.grey,offset: Offset(0, 1),blurRadius: 2)]),child:
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Container(height: 40.h,width: 100.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: Colors.grey)),child: Center(child: Text('All',style: TextStyle(fontWeight: FontWeight.w700),))),
                        Container(height: 40.h,width: 100.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: Colors.grey)),child: Center(child: Text('Women',style: TextStyle(fontWeight: FontWeight.w700))))
                          ],),
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 40.h,width: 100.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: Colors.grey)),child: Center(child: Text('Men',style: TextStyle(fontWeight: FontWeight.w700),))),
                          Container(height: 40.h,width: 100.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: Colors.grey)),child: Center(child: Text('Boys',style: TextStyle(fontWeight: FontWeight.w700))))

                      ],),
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 40.h,width: 100.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: Colors.grey)),child: Center(child: Text('Girls',style: TextStyle(fontWeight: FontWeight.w700),))),
                          SizedBox(height: 40.h,width: 100.w,)
                      ],)
                    ]),
                  ),)),
                InkWell(onTap: () {

                },
                  child: Container(padding: EdgeInsets.only(left: 20,top: 15,right: 20),height:50,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Brand();
                        },));
                      },
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Brand',style: TextStyle(fontWeight: FontWeight.w700),),
                            Text('adidas,Originals,Jack\&Jones,Oliver',style: TextStyle(height: 1)),

                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 20,)
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
        Container(decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5,spreadRadius: 3
        )]),height: 80,child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
          Container(width: 160,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(style: BorderStyle.solid,width: 2)),child: Center(child: Text('Discard')),),
          InkWell(onTap: () => Navigator.pop(context),child: Container(width: 160,height: 30,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow: [BoxShadow(color: Colors.red,blurRadius: 4,offset: Offset(0.0, 1.1))]),child: Center(child: Text('Apply',style: TextStyle(color: Colors.white),)),))

        ]),)
      ]),

    );
  }
}
