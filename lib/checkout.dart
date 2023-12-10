import 'package:ecommersapp2/Bag.dart';
import 'package:ecommersapp2/payment.dart';
import 'package:ecommersapp2/shipping.dart';
import 'package:ecommersapp2/succ2.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
         leading: IconButton(onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
             return Bag();
           },));
         },icon: Icon(Icons.arrow_back_ios_new)),
        title: Text('Checkout',style: TextStyle(fontWeight: FontWeight.w700)),
         centerTitle: true,
        elevation: 10,shadowColor: Colors.white,
        ),
      body: Container(padding: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Text('Shipping address',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20, ),),
              Card(surfaceTintColor: Colors.white,shadowColor: Colors.white,elevation: 10,color: Colors.white,child: SizedBox(height: 120,width:double.infinity , child:Padding(
                padding: const EdgeInsets.only(right: 10,left: 20,bottom: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween
                ,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Jane Doe'),
                    Text('3 Newbridge Court'),
                      Text('Chino Hills,CA 91709,United States')
                  ],),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Shipping();
                    },));
                  },child: Text('Change',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.red ),))
                ],),
              )),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payement',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20, ),),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Payment();
                      },));
                    },
                        child: Text('Change',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.red ),)),
                  ),

                ],
              ),
              // SizedBox(height: 20,),
              Row(
                children: [
                  Container(height: 50,width: 100,decoration: BoxDecoration(borderRadius:  BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1,blurRadius: 10)]),
                      child: Image.asset('assets/master.jpg',scale:  10,)),
                  Text('       **** **** **** 3947')
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivery method',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20, )),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(height: 80,width: 110,decoration: BoxDecoration(borderRadius:  BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1,blurRadius: 10)]),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/fed.png',scale: 30),
                              Text('2-3 days',style: TextStyle(fontSize: 10),),


                            ]),),
                      Container(height: 80,width: 110,decoration: BoxDecoration(borderRadius:  BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1,blurRadius: 10)]),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/usps.jpg',scale: 10),
                              Text('2-3 days',style: TextStyle(fontSize: 10),),


                            ]),),
                      Container(height: 80,width: 110,decoration: BoxDecoration(borderRadius:  BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1,blurRadius: 10)]),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/dhl.png',scale: 30),
                              Text('2-3 days',style: TextStyle(fontSize: 10),),
                              SizedBox(height: 2,)


                            ]),),

                    ],)

                ],),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Order:'),
                      Text('112\$',style: TextStyle(fontWeight: FontWeight.w900),)
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery:'),
                      Text('15\$',style: TextStyle(fontWeight: FontWeight.w900),)
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Summary:'),
                      Text('127\$',style: TextStyle(fontWeight: FontWeight.w900),)
                    ],),
                ],
              ),

              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Success2();
                },));
              },
                  child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 1,offset: Offset(0.0, 1.0),spreadRadius: 1),]),child: Center(child: Text('SUBMIT ORDER',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),))))

        ]),
      ),

    );
  }
}
