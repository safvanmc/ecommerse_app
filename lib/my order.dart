import 'package:ecommersapp2/Orderdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Myorder extends StatefulWidget {
  const Myorder({super.key});

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap: () {
            Navigator.of(context).pop();
          },child: Icon(Icons.arrow_back_ios_new,size: 20.sp,)),
          actions: [Padding(
            padding: EdgeInsets.only(right: 20.r),
            child: Icon(Icons.search,size: 20.sp,color: Colors.black),
          )],),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: EdgeInsets.only(top: 18.r,left: 14.r),
            child: Text(
              'My Orders',
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
            padding: const EdgeInsets.only(top: 20,left: 15).w,
            child: TabBar(labelPadding: EdgeInsets.all(5).w,
              tabs: [
                Container(height: 35.h,width: 110.w,decoration:BoxDecoration(borderRadius: BorderRadius.circular(30.r),color: Colors.black),child: Center(child: Text('Deliverd',style: TextStyle(color: Colors.white),))),
                Container(height: 35.h,width: 110.w,decoration:BoxDecoration(borderRadius: BorderRadius.circular(30.r),),child: Center(child: Text('Processing',style: TextStyle(color: Colors.black),))),
                Container(height: 35.h,width: 110.w,decoration:BoxDecoration(borderRadius: BorderRadius.circular(30.r),),child: Center(child: Text('Canceled',style: TextStyle(color: Colors.black),))),
              ],isScrollable: true,
              indicatorColor: Colors.transparent,
            ),
          ),
             Expanded(
               child: ListView(scrollDirection: Axis.vertical,
                 children: [
                 Padding(
                   padding:  EdgeInsets.only(left: 20.r,right: 20.r,top: 30.r),
                   child: Container(height: 185.h,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 20,spreadRadius: 1,color: Colors.black12)]),child:
                   Padding(
                     padding:  EdgeInsets.only(left: 19.r,right: 15.r,top: 19.r,bottom: 20.r),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Padding(
                         padding: EdgeInsets.only(bottom: 15.r),
                         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               'Order №1947034',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 color: Color(0xFF222222),
                                 fontSize: 16.sp,
                                 fontFamily: 'Metropolis',
                                 fontWeight: FontWeight.w400,
                                 height: 0.h,
                               ),
                             ),
                             Text(
                               '05-12-2019',
                               textAlign: TextAlign.right,
                               style: TextStyle(
                                 color: Color(0xFF9B9B9B),
                                 fontSize: 14.sp,
                                 fontFamily: 'Metropolis',
                                 fontWeight: FontWeight.w400,
                                 height: 0.10.h,
                               ),
                             )
                           ],
                         ),
                       ),
                         Padding(
                           padding:  EdgeInsets.only(bottom: 4.h),
                           child: Row(
                             children: [
                               Text(
                                 'Tracking number:',
                                 textAlign: TextAlign.right,
                                 style: TextStyle(
                                   color: Color(0xFF9B9B9B),
                                   fontSize: 14.sp,
                                   fontFamily: 'Metropolis',
                                   fontWeight: FontWeight.w400,
                                   height: 0.10.h,
                                 ),
                               ),
                               SizedBox(width: 5.w,),
                               Text(
                                 'IW3475453455',
                                 style: TextStyle(
                                   color: Color(0xFF222222),
                                   fontSize: 14.sp,
                                   fontFamily: 'Metropolis',
                                   fontWeight: FontWeight.w500,
                                   height: 0.10.h,
                                 ),
                               )
                             ],
                           ),
                         ),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                           SizedBox(
                             child: Row(
                               children: [
                                 Text(
                                   'Quantity:',
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                     color: Color(0xFF9B9B9B),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.10.h,
                                   ),
                                 ),
                                 SizedBox(width: 5.w,),
                                 Text(
                                   '3',
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                     color: Color(0xFF222222),
                                     fontSize: 16.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.h,
                                   ),
                                 )                               ],
                             ),
                           ),
                           Row(children: [
                             Text(
                               'Total Amount:',
                               textAlign: TextAlign.right,
                               style: TextStyle(
                                 color: Color(0xFF9B9B9B),
                                 fontSize: 14.sp,
                                 fontFamily: 'Metropolis',
                                 fontWeight: FontWeight.w400,
                                 height: 0.10.h,
                               ),
                             ),
                             SizedBox(width: 5.w,),
                             Text(
                               '112\$',
                               style: TextStyle(
                                 color: Color(0xFF222222),
                                 fontSize: 16.sp,
                                 fontFamily: 'Metropolis',
                                 fontWeight: FontWeight.w400,
                                 height: 0.h,
                               ),
                             )
                           ],)
                         ],),
                         Padding(
                           padding: EdgeInsets.only(top: 14.r),
                           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                             InkWell(onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return Orderdetails();
                               },));
                             },
                               child: Container(height: 36.h,width: 98.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),border:(Border.all(width: 2,color: Colors.black))),child: Center(
                                 child: Text(
                                   'Details',
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w500,
                                     height: 0.10.h,
                                   ),
                                 ),
                               ),),
                             ),
                             //   ElevatedButton(onPressed: (){}, child: Text('details')),
                             SizedBox(
                               width: 77.w,
                               height: 15.h,
                               child: Text(
                                 'Delivered',
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                   color: Color(0xFF2AA952),
                                   fontSize: 14.sp,
                                   fontFamily: 'Metropolis',
                                   fontWeight: FontWeight.w500,
                                   height: 0.10.h,
                                 ),
                               ),
                             )
                           ],),
                         ),
                     ],),
                   )),
                 ),
                   Padding(
                     padding:  EdgeInsets.only(left: 20.r,right: 20.r,top: 24.r),
                     child: Container(height: 185.h,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 20,spreadRadius: 1,color: Colors.black12)]),child:
                     Padding(
                       padding:  EdgeInsets.only(left: 19.r,right: 15.r,top: 19.r,bottom: 20.r),
                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: EdgeInsets.only(bottom: 15.r),
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text(
                                   'Order №1947034',
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                     color: Color(0xFF222222),
                                     fontSize: 16.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.h,
                                   ),
                                 ),
                                 Text(
                                   '05-12-2019',
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                     color: Color(0xFF9B9B9B),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.10.h,
                                   ),
                                 )
                               ],
                             ),
                           ),
                           Padding(
                             padding:  EdgeInsets.only(bottom: 4.h),
                             child: Row(
                               children: [
                                 Text(
                                   'Tracking number:',
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                     color: Color(0xFF9B9B9B),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.10.h,
                                   ),
                                 ),
                                 SizedBox(width: 5.w,),
                                 Text(
                                   'IW3475453455',
                                   style: TextStyle(
                                     color: Color(0xFF222222),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w500,
                                     height: 0.10.h,
                                   ),
                                 )
                               ],
                             ),
                           ),
                           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               SizedBox(
                                 child: Row(
                                   children: [
                                     Text(
                                       'Quantity:',
                                       textAlign: TextAlign.right,
                                       style: TextStyle(
                                         color: Color(0xFF9B9B9B),
                                         fontSize: 14.sp,
                                         fontFamily: 'Metropolis',
                                         fontWeight: FontWeight.w400,
                                         height: 0.10.h,
                                       ),
                                     ),
                                     SizedBox(width: 5.w,),
                                     Text(
                                       '3',
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                         color: Color(0xFF222222),
                                         fontSize: 16.sp,
                                         fontFamily: 'Metropolis',
                                         fontWeight: FontWeight.w400,
                                         height: 0.h,
                                       ),
                                     )                               ],
                                 ),
                               ),
                               Row(children: [
                                 Text(
                                   'Total Amount:',
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                     color: Color(0xFF9B9B9B),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.10.h,
                                   ),
                                 ),
                                 SizedBox(width: 5.w,),
                                 Text(
                                   '112\$',
                                   style: TextStyle(
                                     color: Color(0xFF222222),
                                     fontSize: 16.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.h,
                                   ),
                                 )
                               ],)
                             ],),
                           Padding(
                             padding: EdgeInsets.only(top: 14.r),
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Container(height: 36.h,width: 98.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),border:(Border.all(width: 2,color: Colors.black))),child: Center(
                                   child: Text(
                                     'Details',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 14.sp,
                                       fontFamily: 'Metropolis',
                                       fontWeight: FontWeight.w500,
                                       height: 0.10.h,
                                     ),
                                   ),
                                 ),),
                                 //   ElevatedButton(onPressed: (){}, child: Text('details')),
                                 SizedBox(
                                   width: 77.w,
                                   height: 15.h,
                                   child: Text(
                                     'Delivered',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: Color(0xFF2AA952),
                                       fontSize: 14.sp,
                                       fontFamily: 'Metropolis',
                                       fontWeight: FontWeight.w500,
                                       height: 0.10.h,
                                     ),
                                   ),
                                 )
                               ],),
                           ),
                         ],),
                     )),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(left: 20.r,right: 20.r,top: 24.r),
                     child: Container(height: 185.h,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 20,spreadRadius: 1,color: Colors.black12)]),child:
                     Padding(
                       padding:  EdgeInsets.only(left: 19.r,right: 15.r,top: 19.r,bottom: 20.r),
                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: EdgeInsets.only(bottom: 15.r),
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text(
                                   'Order №1947034',
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                     color: Color(0xFF222222),
                                     fontSize: 16.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.h,
                                   ),
                                 ),
                                 Text(
                                   '05-12-2019',
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                     color: Color(0xFF9B9B9B),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.10.h,
                                   ),
                                 )
                               ],
                             ),
                           ),
                           Padding(
                             padding:  EdgeInsets.only(bottom: 4.h),
                             child: Row(
                               children: [
                                 Text(
                                   'Tracking number:',
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                     color: Color(0xFF9B9B9B),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.10.h,
                                   ),
                                 ),
                                 SizedBox(width: 5.w,),
                                 Text(
                                   'IW3475453455',
                                   style: TextStyle(
                                     color: Color(0xFF222222),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w500,
                                     height: 0.10.h,
                                   ),
                                 )
                               ],
                             ),
                           ),
                           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               SizedBox(
                                 child: Row(
                                   children: [
                                     Text(
                                       'Quantity:',
                                       textAlign: TextAlign.right,
                                       style: TextStyle(
                                         color: Color(0xFF9B9B9B),
                                         fontSize: 14.sp,
                                         fontFamily: 'Metropolis',
                                         fontWeight: FontWeight.w400,
                                         height: 0.10.h,
                                       ),
                                     ),
                                     SizedBox(width: 5.w,),
                                     Text(
                                       '3',
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                         color: Color(0xFF222222),
                                         fontSize: 16.sp,
                                         fontFamily: 'Metropolis',
                                         fontWeight: FontWeight.w400,
                                         height: 0.h,
                                       ),
                                     )                               ],
                                 ),
                               ),
                               Row(children: [
                                 Text(
                                   'Total Amount:',
                                   textAlign: TextAlign.right,
                                   style: TextStyle(
                                     color: Color(0xFF9B9B9B),
                                     fontSize: 14.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.10.h,
                                   ),
                                 ),
                                 SizedBox(width: 5.w,),
                                 Text(
                                   '112\$',
                                   style: TextStyle(
                                     color: Color(0xFF222222),
                                     fontSize: 16.sp,
                                     fontFamily: 'Metropolis',
                                     fontWeight: FontWeight.w400,
                                     height: 0.h,
                                   ),
                                 )
                               ],)
                             ],),
                           Padding(
                             padding: EdgeInsets.only(top: 14.r),
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Container(height: 36.h,width: 98.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),border:(Border.all(width: 2,color: Colors.black))),child: Center(
                                   child: Text(
                                     'Details',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 14.sp,
                                       fontFamily: 'Metropolis',
                                       fontWeight: FontWeight.w500,
                                       height: 0.10.h,
                                     ),
                                   ),
                                 ),),
                                 //   ElevatedButton(onPressed: (){}, child: Text('details')),
                                 SizedBox(
                                   width: 77.w,
                                   height: 15.h,
                                   child: Text(
                                     'Delivered',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: Color(0xFF2AA952),
                                       fontSize: 14.sp,
                                       fontFamily: 'Metropolis',
                                       fontWeight: FontWeight.w500,
                                       height: 0.10.h,
                                     ),
                                   ),
                                 )
                               ],),
                           ),
                         ],),
                     )),
                   ),
               ],),
             )
        ]),

      ),
    );
  }
}
