import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool togle=false;
  bool value=false;
  void Showmodel(){
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      context: context, builder: (context) {
      return Container(width: double.infinity,height: 472,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50.r)),color: Colors.white),child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16).r,
                child: Center(child: Container(height: 10.h,width: 70.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),color: Colors.grey),)),
              ),
              Center(child: Text('Add your new card',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
              SizedBox(height: 18.h,),
              Container(height: 60.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10.r,color: Colors.black12,spreadRadius: 1.r)]),
                child:  Padding(
                  padding:  EdgeInsets.only(left: 10.r),
                  child: TextFormField(decoration: InputDecoration(border: InputBorder.none,label: Text('Name on card',),labelStyle: TextStyle(color: Colors.grey))),
                ),),
              // SizedBox(height: 14.h,),
              Row(
                children: [
                  Expanded(child: SizedBox(height: 0,)),
                  TextButton(onPressed: () {

                  }, child: Text('Forgot your password?',style: TextStyle(
                    color: Color(0xFF9B9B9B),
                    fontSize: 14.sp,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                    height: 0.10.h,
                  ),textAlign: TextAlign.end,)),
                ],
              ),
              SizedBox(height: 18.h,),
              Container(height: 60.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10.r,color: Colors.black12,spreadRadius: 1.r)]),
                child:  Padding(
                  padding: EdgeInsets.only(left: 10,bottom: 10).r,
                  child: TextFormField(decoration: InputDecoration(border: InputBorder.none,label: Text('New Password',),labelStyle: TextStyle(color: Colors.grey))),
                ),),
              SizedBox(height: 24.h,),
              Container(height: 60.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10.r,color: Colors.black12,spreadRadius: 1.r)]),
                child:  Padding(
                  padding: EdgeInsets.only(left: 10,bottom: 10).r,
                  child: TextFormField(decoration: InputDecoration(border: InputBorder.none,label: Text('Repeat New Password',),labelStyle: TextStyle(color: Colors.grey))),
                ),),
              SizedBox(height: 32.h,),
              InkWell(onTap: () {

              }, child: Container(height: 48.h,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50.r),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 1.r,offset: Offset(0.0, 1.0),spreadRadius: 1.r),]),child: Center(child: Text('ADD CARD',style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),))))

            ]),
      ),);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back_ios_new,size: 20.sp,)),
        actions: [Padding(
          padding: EdgeInsets.only(right: 20.r),
          child: Icon(Icons.search,size: 20.sp,color: Colors.black),
        )],),
      body:Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        Padding(
          padding: EdgeInsets.only(top: 18.r,left: 14.r,bottom: 23.r),
          child: Text(
            'Settings',
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 34.sp,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.r),
          child: Text(
            'Personal Information',
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 16.sp,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400,
              height: 0.h,
            ),
          ),
        ),
            SizedBox(height: 21.h,),
            Padding(
              padding: EdgeInsets.only(left: 16.r,right: 16.r),
              child: Container(height:63.h,width:double.infinity,padding: EdgeInsets.only(left: 10.r),decoration:BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1.r,blurRadius: 20.r)]),child: Center(
                  child: TextFormField(decoration: InputDecoration(hintText: 'Full name',border: InputBorder.none),)),),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsets.only(left: 16.r,right: 16.r),
              child: Container(height:63.h,width:double.infinity,padding: EdgeInsets.only(left: 10.r),decoration:BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1.r,blurRadius: 20.r)]),child: Center(
                  child: TextFormField(decoration: InputDecoration(hintText: 'Date of birth',border: InputBorder.none),)),),
            ),
            SizedBox(height: 55.h,),
            Padding(
              padding:  EdgeInsets.only(left: 16.r,right: 16.r),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 16.sp,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextButton(onPressed: () {
                   Showmodel();
                  },child: Text('Change',style: TextStyle(
                    color: Color(0xFF9B9B9B),
                    fontSize: 14.sp,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),),
                  )
                ],
              ),
            ),
            SizedBox(height: 21.h,),
            Padding(
              padding: EdgeInsets.only(left: 16.r,right: 16.r),
              child: Container(height:63.h,width:double.infinity,padding: EdgeInsets.only(left: 10.r),decoration:BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1.r,blurRadius: 20.r)]),child: Center(
                  child: TextFormField(obscureText: true,decoration: InputDecoration(labelText: 'Password',border: InputBorder.none),)),),
            ),
            SizedBox(height: 55.h,),
            Padding(
              padding:  EdgeInsets.only(left: 16,right: 16).r,
              child: Text(
                'Notifications',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 16.sp,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  height: 0.h,
                ),
              ),
            ),
            SizedBox(height: 23.h,),
            Padding(
              padding:  EdgeInsets.only(left: 16,right: 16).r,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  'Sales',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14.sp,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                    height: 0.10.h,
                  ),
                ),
                FlutterSwitch(
                  height: 20.0.h,
                  width: 40.0.w,
                  padding: 1.0,
                  toggleSize: 20.0,
                  borderRadius: 20.0.r,
                  activeColor: Colors.grey,
                  toggleColor: Colors.green,
                  value: togle,
                  onToggle: (value) {
                    setState(() {
                      togle = value;
                    });
                  },
                ),
              ],),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding:  EdgeInsets.only(left: 16,right: 16).r,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New arrivals',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 14.sp,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                      height: 0.10.h,
                    ),
                  ),
                  FlutterSwitch(
                    height: 20.0.h,
                    width: 40.0.w,
                    padding: 1.0,
                    toggleSize: 20.0,
                    borderRadius: 20.0.r,
                    activeColor: Colors.grey,
                    toggleColor: Colors.green,
                    value: value,
                    onToggle: (value) {
                      setState(() {
                        value = value;
                      });
                    },
                  ),
                ],),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding:  EdgeInsets.only(left: 16,right: 16).r,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery status changes',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 14.sp,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                      height: 0.10.h,
                    ),
                  ),
                  FlutterSwitch(
                    height: 20.0.h,
                    width: 40.0.w,
                    padding: 1.0,
                    toggleSize: 20.0,
                    borderRadius: 20.0.r,
                    activeColor: Colors.grey,
                    toggleColor: Colors.green,
                    value: value,
                    onToggle: (value) {
                      setState(() {
                        value = value;
                      });
                    },
                  ),
                ],),
            ),

          ]) ,
    );
  }
}
