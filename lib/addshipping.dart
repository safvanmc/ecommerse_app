import 'package:ecommersapp2/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Addship extends StatefulWidget {
  const Addship({super.key});

  @override
  State<Addship> createState() => _AddshipState();
}

class _AddshipState extends State<Addship> {
  Widget getTextFormfield({required String hint}){
   return TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r),borderSide: BorderSide(color: Colors.transparent,width: 0)
   ),enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r),borderSide: BorderSide(color: Colors.transparent,width: 0)),
       filled:true,
       fillColor: Color.fromARGB(181, 229, 226, 226),
       contentPadding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 16.h),
       hintText: hint));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios_new)),
        title: Text('Add shipping address',style: TextStyle(fontWeight: FontWeight.w700)),
        centerTitle: true,
        elevation: 10.r,shadowColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        child: Column(
            children: [
          getTextFormfield(hint: 'Full name'),
          SizedBox(height: 30.h,),
          getTextFormfield(hint: 'Address'),
          SizedBox(height: 30.h,),
          getTextFormfield(hint: 'City'),
          SizedBox(height: 30.h,),
          getTextFormfield(hint: 'State/region'),
          SizedBox(height: 30.h,),
          getTextFormfield(hint: 'Zip code/Post code'),
              SizedBox(height: 30.h,),
              getTextFormfield(hint: 'Country'),
          SizedBox(height: 40.h,),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Checkout();
            },));
          },style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
           child: Center(child: Text('SAVE ADDRESS',style: TextStyle(fontSize: 15.h),)))
        ]),
      ),
    );
  }
}
