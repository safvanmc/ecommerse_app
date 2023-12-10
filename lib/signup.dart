import 'package:ecommersapp2/Login.dart';
import 'package:ecommersapp2/Navigationbar.dart';
import 'package:ecommersapp2/homepage.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formkey=GlobalKey<FormState>();
  var name=TextEditingController();
  var email=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(key: formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sign up',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                SizedBox(
                  child: Column(
                    children: [
                      Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5)]),child:
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(controller: name,validator: (value){
                          if(value==null|| value.isEmpty){
                            return 'Empty field';
                          }
                        },decoration: InputDecoration(border: InputBorder.none,labelText: 'Name')),
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5)]),child:
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(controller: email,validator: (value) {
                            if(value==null||value.isEmpty){
                              return 'Empty field';
                            }
                          },
                              decoration: InputDecoration(border: InputBorder.none,labelText: 'Email',),style: TextStyle(fontSize: 15)),
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5)]),child:
                        Center(child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(controller: password,validator: (value) {
                            if(value==null||value.isEmpty){
                              return'Empty field';
                            }
                          },
                              decoration: InputDecoration(border: InputBorder.none,labelText: 'Password',labelStyle: TextStyle(height: 0.0),contentPadding: EdgeInsets.only(bottom: 10,top: 10))),
                        )),),
                      ),
                      InkWell(onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Login();
                        },));
                      },
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Already have an account?',style: TextStyle(fontSize: 10)),
                            Icon(Icons.arrow_right_alt,color: Colors.red,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: InkWell(onTap: () {
                          if(formkey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnav(),));
                          }

                        },child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 0.5,offset: Offset(0.0, 2.0),),]),child: Center(child: Text('SIGN UP',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)))),
                      ),
                    ],
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Center(child: Text('Or sign up with social account',style: TextStyle(fontSize: 10),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(onTap: () {

                        },
                          child: Container(height: 50,width:70 ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 5)],color: Colors.white),child:
                          Image.asset('assets/google.jpeg',scale: 7),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: InkWell(onTap:() {

                          },
                            child: Container(height: 50,width:70 ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 5)],color: Colors.white),child:
                            ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/facebook.png',scale: 40,)),),
                          ),
                        )

                      ],),
                  ),
                ],)
              ]),
        ),
      ),
    );
  }
}
