import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final formkey=GlobalKey<FormState>();
  var email=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(key: formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Forgot Password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 200,bottom: 10),
                        child: Text('please,enter your email address.You will receive a link to create a new password via email'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5)]),child:
                        Center(child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(controller: email,validator: (value) {
                            if(value==null||value.isEmpty){
                              return'Empty field';
                            }
                          },
                              decoration: InputDecoration(border: InputBorder.none,labelText: 'email',labelStyle: TextStyle(height: 0.0),contentPadding: EdgeInsets.only(bottom: 10,top: 10))),
                        )),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40,bottom: 10),
                        child: InkWell(onTap: () {
                          if(formkey.currentState!.validate()){

                          }

                        },child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow:[BoxShadow(color: Colors.redAccent,blurRadius: 0.5,offset: Offset(0.0, 2.0),),]),child: Center(child: Text('SEND',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)))),
                      ),
                      SizedBox(height: 50,width: 100,),

                    ],
                  ),
                ),
                Column(children: [

                ],)
              ]),
        ),
      ),
    );
  }
}
