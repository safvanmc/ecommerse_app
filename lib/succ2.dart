import 'package:ecommersapp2/Navigationbar.dart';
import 'package:ecommersapp2/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Success2 extends StatefulWidget {
  const Success2({super.key});

  @override
  State<Success2> createState() => _Success2State();
}

class _Success2State extends State<Success2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/suc1.webp'),fit: BoxFit.cover,))),
          Positioned(top: 121.h,left: 70.w,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Success!',style:TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w700),),
                    Text('Your order will be delivered soon.\nThank you for choosing our app!',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                    SizedBox(height: 10.h,),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Bottomnav();
                      },));
                    },
                        style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red),
                            foregroundColor: MaterialStateProperty.all(Colors.white),

                        ),
                        child: Text('Continue Shopping',style: TextStyle(color: Colors.white,fontSize: 14.sp),))
                  ],
                ),
              ],
            ),
          ),
          ],
      ),

    );
  }
}
