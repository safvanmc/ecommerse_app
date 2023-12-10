import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Orderdetails extends StatefulWidget {
  const Orderdetails({super.key});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        shadowColor: Colors.black12,
        centerTitle: true,
        title: Text(
          'Order details',
          style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 18.sp,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400,
              height: 0.07.h),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 20.sp,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.r),
            child: Icon(Icons.search, size: 20.sp, color: Colors.black),
          )
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 15,right: 15).r,
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.only(top: 30.r),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order №1947034',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 16.sp,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    height: 0,
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
            padding:  EdgeInsets.only(top: 15.r),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
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
                  Text(
                    'IW3475453455',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 14.sp,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                      height: 0.10.h,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Text(
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
                ],
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 18).r,
            child: Text(
              '3 items',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 14.sp,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w500,
                //height: 0.10.h,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 104.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
              shadows: [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 25.r,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(height: 104.h,width: 104.w,child: Image.asset('assets/lines.jpg'),),
                  Padding(
                    padding: const EdgeInsets.only(left: 11,right: 15),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: EdgeInsets.only(top: 11.r,bottom: 4.r),
                        child: Text(
                          'Pullover',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16.sp,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400,
                            height: 0.h,
                          ),
                        ),
                      ),
                      Text(
                        'Mango',
                        style: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 11.sp,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                          height: -0.02.h,
                          letterSpacing: -0.02,
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9).r,
                          child: Row(
                            children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Color:',
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.02,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.02,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Gray',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.02,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16.w,),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Size:',
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0.h,
                                    ),
                                  ),

                                  TextSpan(
                                    text: '  L',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0.h,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13).r,
                          child: Row(
                            children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Units:',
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.02,
                                    ),
                                  ),

                                  TextSpan(
                                    text: '  1',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.02,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                              SizedBox(width: 145.w,),
                              Text(
                                '51\$',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 14.sp,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10.h,
                                ),
                              )                          ],),
                        )
                    ],),
                  )
            ]),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 24.r,bottom: 24.r),
            child: Container(
              width: double.infinity,
              height: 104.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                shadows: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 25.r,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 104.h,width: 104.w,child: Image.asset('assets/navy.jpg'),),
                    Padding(
                      padding: const EdgeInsets.only(left: 11,right: 15),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 11.r,bottom: 4.r),
                            child: Text(
                              'Pullover',
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 16.sp,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400,
                                height: 0.h,
                              ),
                            ),
                          ),
                          Text(
                            'Mango',
                            style: TextStyle(
                              color: Color(0xFF9B9B9B),
                              fontSize: 11.sp,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              height: -0.02.h,
                              letterSpacing: -0.02,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9).r,
                            child: Row(children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Color:',
                                      style: TextStyle(
                                        color: Color(0xFF9B9B9B),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.02,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: Color(0xFF9B9B9B),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.02,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Gray',
                                      style: TextStyle(
                                        color: Color(0xFF222222),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.02,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16.w,),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Size:',
                                      style: TextStyle(
                                        color: Color(0xFF9B9B9B),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: Color(0xFF9B9B9B),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'L',
                                      style: TextStyle(
                                        color: Color(0xFF222222),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13).r,
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Units:',
                                        style: TextStyle(
                                          color: Color(0xFF9B9B9B),
                                          fontSize: 11.sp,
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.02,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Color(0xFF9B9B9B),
                                          fontSize: 11.sp,
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.02,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '1',
                                        style: TextStyle(
                                          color: Color(0xFF222222),
                                          fontSize: 11.sp,
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.02,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 145.w,),
                                Text(
                                  '51\$',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14.sp,
                                    fontFamily: 'Metropolis',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10.h,
                                  ),
                                )                              ],),
                          )
                        ],),
                    )
                  ]),
            ),
          ),
          Container(
            width: double.infinity,
            height: 104.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
              shadows: [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 25.r,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 104.h,width: 104.w,child: Image.asset('assets/gimmen.png'),),
                  Padding(
                    padding: const EdgeInsets.only(left: 11,right: 15),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 11.r,bottom: 4.r),
                          child: Text(
                            'Pullover',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 16.sp,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),
                        ),
                        Text(
                          'Mango',
                          style: TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontSize: 11.sp,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400,
                            height: -0.02.h,
                            letterSpacing: -0.02,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9).r,
                          child: Row(children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Color:',
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.02,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.02,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Gray',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.02,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16.w,),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Size:',
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'L',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 11.sp,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13).r,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Units:',
                                      style: TextStyle(
                                        color: Color(0xFF9B9B9B),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.02,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: Color(0xFF9B9B9B),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.02,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '1',
                                      style: TextStyle(
                                        color: Color(0xFF222222),
                                        fontSize: 11.sp,
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.02,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 145.w,),
                              Text(
                                '51\$',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 14.sp,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10.h,
                                ),
                              )                            ],),
                        )
                      ],),
                  )
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 34,bottom: 15).r,
            child: Text(
              'Order information',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 14.sp,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w500,
                height: 0.10.h,
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              'Shipping Address:',
              style: TextStyle(
                color: Color(0xFF9B9B9B),
                fontSize: 14.sp,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w400,
                height: 0.h,
              ),
            ),
            SizedBox(width: 5.w,),
            Text(
              '3 Newbridge Court ,Chino Hills,\nCA 91709, United States',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 14.sp,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w500,
                height:0.h,
              ),
            )
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 24).r,
            child: Row(children: [
              Text(
                'Payment method: ',
                style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 14.sp,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  height: 0.10.h,
                ),
              ),
              SizedBox(width: 5.w,),
              Container(height: 25.h,width: 32.w,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/master.jpg'))),),
              SizedBox(width: 5.w,),
              Text(
                '**** **** **** 3947',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 14.sp,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  height: 0.10.h,
                ),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24).r,
            child: Row(children: [
              Text(
                'Delivery method:',
                style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 14.sp,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  height: 0.10.h,
                ),
              ),
              SizedBox(width: 15.w,),
              Text(
                'FedEx, 3 days, 15\$',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 14.sp,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  height: 0.10.h,
                ),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24).r,
            child: Row(children: [
              Text(
                'Discount:',
                style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 14.sp,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  height: 0.10.h,
                ),
              ),
              SizedBox(width: 65.w,),
              Text(
                '10%, Personal promo code',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 14.sp,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  height: 0.10.h,
                ),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24).r,
            child: Row(children: [
              Text(
                'Total Amount:',
                style: TextStyle(
                  color: Color(0xFF9B9B9B),
                  fontSize: 14.sp,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w400,
                  height: 0.10.h,
                ),
              ),
              SizedBox(width: 35.w,),
              Text(
                '133\$',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  height: 0.10,
                ),
              )
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24,bottom: 37).r,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(height: 36.h,width: 160.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.r),border:Border.all(width: 2.w,),),child: Center
                (
                child: Text(
                  'Reorder',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 14.sp,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                    height: 0.10.h,
                  ),
                ),
              )),
              Container(height: 36.h,width: 160.w,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50.r),border:Border.all(width: 2.w,color: Colors.red)),child:
              Center(
                child: Text(
                  'Leave feedback',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                    height: 0.10.h,
                  ),
                ),
              ))

            ],),
          )




        ]),
      ),
    );
  }
}
