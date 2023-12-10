import 'package:ecommersapp2/Bag.dart';
import 'package:ecommersapp2/Categories.dart';
import 'package:ecommersapp2/Favourite.dart';
import 'package:ecommersapp2/Filters.dart';
import 'package:ecommersapp2/Navigationbar.dart';
import 'package:ecommersapp2/Orderdetails.dart';
import 'package:ecommersapp2/Settings.dart';
import 'package:ecommersapp2/Shorttop.dart';
import 'package:ecommersapp2/Womenstops.dart';
import 'package:ecommersapp2/brand.dart';
import 'package:ecommersapp2/catList.dart';
import 'package:ecommersapp2/checkout.dart';
import 'package:ecommersapp2/homepage.dart';
import 'package:ecommersapp2/my%20order.dart';
import 'package:ecommersapp2/newcollection.dart';
import 'package:ecommersapp2/payment.dart';
import 'package:ecommersapp2/ratingandreviews.dart';
import 'package:ecommersapp2/shipping.dart';
import 'package:ecommersapp2/signup.dart';
import 'package:ecommersapp2/streetcloth.dart';
import 'package:ecommersapp2/succ2.dart';
import 'package:ecommersapp2/womenstop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(372, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.white,
          useMaterial3: true,
        ),
        home: Signup(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


