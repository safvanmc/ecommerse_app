import 'package:ecommersapp2/Womenstops.dart';
import 'package:flutter/material.dart';

class ListCat extends StatefulWidget {
  const ListCat({super.key});

  @override
  State<ListCat> createState() => _ListCatState();
}

class _ListCatState extends State<ListCat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(232, 255, 255, 255),
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        },child:Icon(Icons.arrow_back_ios_new)),
        title: Center(child: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold),)),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.search,size: 30,color: Colors.black),
        )],
      // shadowColor: Colors.black,
      // backgroundColor: Colors.transparent,
       // elevation: 0.0,
      // New parameter:
      // scrolledUnderElevation: 0,

    ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
          child: Container(height: 50,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red ,boxShadow: [BoxShadow(color: Colors.red,blurRadius:5,offset:Offset(0, 2))]),child: Center(child: Text('VIEW ALL ITEMS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,))),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,bottom: 10),
          child: Text('Choose category',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500)),
        ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Womentop();
              },));
            },child: Text('         Tops',style: TextStyle(fontWeight: FontWeight.w500),)),
            Divider(),
            Text('         Shirts & Blouses',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Cardigans & Sweaters',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Knitwear',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Blazers',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Outerwear',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Pants',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Jeans',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Shorts',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Skirts',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
            Text('         Dresses',style: TextStyle(fontWeight: FontWeight.w500),),
            Divider(),
      ]),

    );
  }
}
