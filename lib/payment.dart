import 'package:ecommersapp2/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool value=false;
  bool value1=false;
  bool value2=false;
  void Showmodel(){
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      context: context, builder: (context) {
      return Container(width: double.infinity,height: 550,decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),color: Colors.white),child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(child: Container(height: 10,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey),)),
              ),
              Center(child: Text('Add your new card',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
              SizedBox(height: 20,),
              Container(height: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black12,spreadRadius: 1)]),
              child:  Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 10),
                child: TextFormField(decoration: InputDecoration(border: InputBorder.none,label: Text('Name on card',),labelStyle: TextStyle(color: Colors.grey))),
              ),),
              SizedBox(height: 20,),
              Container(height: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black12,spreadRadius: 1)]),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: TextFormField(decoration: InputDecoration(border: InputBorder.none,labelText: 'Card number',labelStyle: TextStyle(color: Colors.grey)))),
                      Container(height: 30,width: 40,child: Image.asset('assets/master.jpg',))
                    ],
                  ),
                ),),
              SizedBox(height: 20,),
              Container(height: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black12,spreadRadius: 1)]),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 10),
                  child: TextFormField(decoration: InputDecoration(border: InputBorder.none,labelText: 'Expairy Date',labelStyle: TextStyle(color: Colors.grey))),
                ),),
              SizedBox(height: 20,),
              Container(height: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black12,spreadRadius: 1)]),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 10,right: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: TextFormField(decoration: InputDecoration(border: InputBorder.none,labelText: 'CVV',labelStyle: TextStyle(color: Colors.grey)))),
                      Icon(CupertinoIcons.question_circle,color: Colors.grey,)
                    ],
                  ),
                ),),
              Row(
                children: [
                  Checkbox(activeColor: Colors.red,
                    value: this.value2, onChanged: (value) {
                      setState(() {
                        this.value2 = value!;


                      });
                    },),
                  Text('set as default payment method')
                ],
              ),

              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Payment();
                },));
              },
                  child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 1,offset: Offset(0.0, 1.0),spreadRadius: 1),]),child: Center(child: Text('ADD CARD',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),))))





            ]),
      ),);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(resizeToAvoidBottomInset: false,

      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Checkout();
          },));
        },icon: Icon(Icons.arrow_back_ios_new)),
        title: Text('Payment methods',style: TextStyle(fontWeight: FontWeight.w700)),
        centerTitle: true,
        elevation: 10,shadowColor: Colors.white,
      ),
      body: Column(children: [
        Expanded(child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('Your payment cards',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20, ),),
              Expanded(child: Container(child: Image.asset('assets/cardb.jpg'),)),
              Row(
                children: [
                  Checkbox(activeColor: Colors.red,
                    value: this.value1, onChanged: (value) {
                      setState(() {
                        this.value1 = value!;

                      });
                    },),
                  Text('Use as default payment method'),
                ],
              )    ,
                  Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),child: ClipRRect(borderRadius: BorderRadius.circular(20.r),child: Image.asset('assets/cardw.png')))),
            Row(
                children: [
                  Checkbox(activeColor: Colors.red,
                    value: this.value, onChanged: (value) {
                      setState(() {
                        this.value = value!;

                      });
                    },),
                  Text('Use as default payment method'),
                ],),
                  Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FloatingActionButton(backgroundColor: Colors.black,
                        shape: CircleBorder(),
                        onPressed: () {
                        Showmodel();
                      },child: Icon(CupertinoIcons.plus,color: Colors.white),),
                    ],
                  )


            ]),
          ),
        ))
      ]),
    );
  }
}
