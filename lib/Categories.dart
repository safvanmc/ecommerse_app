import 'package:ecommersapp2/catList.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(bottom: TabBar(tabs:[
          Tab(text: 'Women'),
          Tab(text: 'Men',),
          Tab(text: 'Kids',),
        ],indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.red,
        labelColor: Colors.black,
        indicatorWeight: 5),

            leading: Icon(Icons.arrow_back_ios_new),
        title: Center(child: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold),)),
            actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.search,size: 30,color: Colors.black),
        )]),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:  (context) {
                    return ListCat();
                  },));
                },
                  child: Container(height: 100,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.red,),
                  child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('SUMMER SALES',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('Up to 50% off',style: TextStyle(color: Colors.white),)
                    ],
                  )),),
                ),
                Container(height: 100,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow:[BoxShadow(blurRadius: 10,color: Colors.black12)]),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Expanded(child: SizedBox(child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('New',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  ))),
                  Expanded(child: SizedBox(child: Image.asset('assets/Denim.jpg',fit: BoxFit.cover,)))
                ]),),
                Container(height: 100,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow:[BoxShadow(blurRadius: 10,color: Colors.black12)]),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: SizedBox(child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Cloths',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ))),
                        Expanded(child: SizedBox(child: Image.asset('assets/tshirt.jpg',fit: BoxFit.cover,)))
                      ]),),
                Container(height: 100,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow:[BoxShadow(blurRadius: 10,color: Colors.black12)]),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: SizedBox(child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('New',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ))),
                        Expanded(child: SizedBox(child: Image.asset('assets/shoe.jpg',fit: BoxFit.cover,)))
                      ]),),
                Container(height: 100,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,boxShadow:[BoxShadow(blurRadius: 10,color: Colors.black12)]),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: SizedBox(child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('New',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        ))),
                        Expanded(child: SizedBox(child: Image.asset('assets/accessory.jpg',fit: BoxFit.fill,)))
                      ]),),

              ],
            ),
          ),
          Container(color: Colors.green,),
          Container(color: Colors.blueAccent,)


        ]),

      ),
    );
  }
}
