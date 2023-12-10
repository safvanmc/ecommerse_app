import 'package:ecommersapp2/addshipping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Shipping extends StatefulWidget {
  const Shipping({super.key});

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios_new)),
        title: Text('Shipping address',style: TextStyle(fontWeight: FontWeight.w700)),
        centerTitle: true,
        elevation: 10.r,shadowColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
          Container(height: 140.h,width: 343.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1.r,blurRadius: 10.r)]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Jane Doe',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700,),),
                  Text('Edit',style: TextStyle(fontSize: 14.sp,color: Colors.red,fontWeight: FontWeight.w700,),),
                ],),
                    Text('3 Newbridge Court\nChino Hills, CA 91709, United States',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700,),),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Checkbox(
                            activeColor: Colors.red,
                            value: true, onChanged: (value) {

                          },),
                        ),
                        Text('Use as the shipping address',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),),
                      ],),
          ],),
              )),
              SizedBox(height: 40.h,),
              Container(height: 140.h,width: 343.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1.r,blurRadius: 10.r)]),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jane Doe',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700,),),
                            Text('Edit',style: TextStyle(fontSize: 14.sp,color: Colors.red,fontWeight: FontWeight.w700,),),
                          ],),
                        Text('3 Newbridge Court\nChino Hills, CA 91709, United States',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700,),),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {

                            },),
                            Text('Use as the shipping address',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),),
                          ],),
                      ],),
                  )),
              SizedBox(height: 40.h,),
              Container(height: 140.h,width: 343.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1.r,blurRadius: 10.r)]),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Jane Doe',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700,),),
                            Text('Edit',style: TextStyle(fontSize: 14.sp,color: Colors.red,fontWeight: FontWeight.w700,),),
                          ],),
                        Text('51 Riverside\nChino Hills, CA 91709, United States',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700,),),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {

                            },),
                            Text('Use as the shipping address',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),),
                          ],),
                      ],),
                  )),
              SizedBox(height: 40.h,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(90)),child: IconButton(icon: Icon(CupertinoIcons.plus,color: Colors.white),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Addship();
                    },));
                  },),),
                ],
              )
        ]),
      ),
    );
  }
}
