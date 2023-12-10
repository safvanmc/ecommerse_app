import 'package:ecommersapp2/Settings.dart';
import 'package:ecommersapp2/addshipping.dart';
import 'package:ecommersapp2/my%20order.dart';
import 'package:ecommersapp2/shipping.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 812.h,width: 393.w,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Padding(
            padding: EdgeInsets.only(left: 330.w,top: 52.h),
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.search,size: 30.sp,color: Colors.black)),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20.w,top: 20.h),
            child: Text('My profile',style: TextStyle(fontSize: 34.sp,fontWeight: FontWeight.w700),),
          ),
              Padding(
                padding: EdgeInsets.only(left: 20.w,top: 20.h),
                child: Row(
                  children: [
                    Container(
                      width: 64.w,
                      height: 64.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFC4C4C4),
                        shape: OvalBorder(),
                        image: DecorationImage(image: AssetImage('assets/sunglass.jpg'),fit: BoxFit.fill)
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 20.w),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Matilda Brown',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 18.sp,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              height: 0.07.h,
                            ),
                          ),SizedBox(height: 15.h,),
                          Text(
                            'matildabrown@mail.com',
                            style: TextStyle(
                              color: Color(0xFF9B9B9B),
                              fontSize: 14.sp,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Container(height:72.h,width: 393.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Myorder();
                        },));
                      },
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Text(
                            'My orders',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 16.sp,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              height: 2.h,
                            ),
                          ),
                          Text(
                            'Already have 12 orders',
                            style: TextStyle(
                              color: Color(0xFF9B9B9B),
                              fontSize: 11.sp,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              height: 1.h,
                            ),
                          )
                        ]),
                      ),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.chevron_right))
                    ],
                  ),
                ),),
              ),
              Divider(),
              Container(height:72.h,width: 393.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Shipping(),));
                  },
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Shipping addresses',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 16.sp,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  height: 2.h,
                                ),
                              ),
                              Text(
                                '3 ddresses',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 11.sp,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  height: 1.h,
                                ),
                              )
                            ]),
                        IconButton(onPressed: () {

                        }, icon: Icon(Icons.chevron_right))
                      ],
                    ),
                  ),
                ),),
              Divider(),
              Container(height:72.h,width: 393.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Promocodes',
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 16.sp,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400,
                                height: 2.h,
                              ),
                            ),
                            Text(
                              'You have special promocodes',
                              style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 11.sp,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400,
                                height: 1.h,
                              ),
                            )
                          ]),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.chevron_right))
                    ],
                  ),
                ),),
              Divider(),
              Container(height:72.h,width: 393.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'My reviews',
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 16.sp,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400,
                                height: 2.h,
                              ),
                            ),
                            Text(
                              'Reviews for 4 items',
                              style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 11.sp,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400,
                                height: 1.h,
                              ),
                            )
                          ]),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.chevron_right))
                    ],
                  ),
                ),),
              Divider(),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Settings();
                },));
              },
                child: Container(height:72.h,width: 393.w,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Settings',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 16.sp,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  height: 2.h,
                                ),
                              ),
                              Text(
                                'Notifications, password',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 11.sp,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w400,
                                  height: 1.h,
                                ),
                              )
                            ]),
                        IconButton(onPressed: () {

                        }, icon: Icon(Icons.chevron_right))
                      ],
                    ),
                  ),),
              ),

        ]),
      ),
    );
  }
}
