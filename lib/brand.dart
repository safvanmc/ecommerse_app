import 'package:flutter/material.dart';

class Brand extends StatefulWidget {
  const Brand({super.key});

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  final controller=TextEditingController();
  bool value= false;bool value1= false;bool value2= false;bool value4= false;bool value5= false;
  bool value6= false;bool value7= false;bool value8= false;bool value9= false;bool value3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: PreferredSize(preferredSize: Size(double.infinity, 50),
        child: Container(decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 1),blurRadius: 1,color: Colors.grey)]),
          child: AppBar(
            leading: InkWell(onTap: () {
              Navigator.of(context).pop();
            },child: Icon(Icons.arrow_back_ios_new)),
            title: Text('Filters',style: TextStyle(fontWeight: FontWeight.w700)),
            centerTitle: true,
            titleSpacing: 100,



          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(flex: 1,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  Container(height: 50,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 2,spreadRadius: 1,offset: Offset(0.0, 2.0))]),child: Center(
                    child: TextFormField(controller:controller ,
                    decoration: InputDecoration(icon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.search),
                    ),border: InputBorder.none,hintText: 'Search')),
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('adidas',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        activeColor: Colors.red,
                      value: this.value,
                      onChanged: ( value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                      )
                    ],),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('adidas Original',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value1,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value1 = value!;
                          });
                        },
                      )
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Blend',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value2,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value2 = value!;
                          });
                        },
                      )
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Botique Moschino',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value3,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value3 = value!;
                          });
                        },
                      )
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Champian',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value4,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value4 = value!;
                          });
                        },
                      )
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Diesel',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value5,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value5 = value!;
                          });
                        },
                      )
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jack \& Josn',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value6,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value6 = value!;
                          });
                        },
                      )
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Naf Naf',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value7,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value7 = value!;
                          });
                        },
                      )
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Red Vplentino',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value8,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value8 = value!;
                          });
                        },
                      )
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('s.Oliver',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                      Checkbox(
                        value: this.value9,
                        activeColor: Colors.red,
                        onChanged: ( value) {
                          setState(() {
                            this.value9 = value!;
                          });
                        },
                      )
                    ],),

                ]),
              ),
            ),
          ),
          Container(decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5,spreadRadius: 3
          )]),height: 80,child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Container(width: 160,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(style: BorderStyle.solid,width: 2)),child: Center(child: Text('Discard')),),
            InkWell(onTap: () {
              Navigator.pop(context);
            },child: Container(width: 160,height: 30,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(50),boxShadow: [BoxShadow(color: Colors.red,blurRadius: 4,offset: Offset(0.0, 1.1))]),child: Center(child: Text('Apply',style: TextStyle(color: Colors.white),)),))

          ]),)
        ],
      ),

    );
  }
}
