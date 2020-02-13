import 'package:flutter/material.dart';
import 'package:shopapp_tut/components/waterfalls.dart';

class Relavent_places_list extends StatefulWidget {
  final place_name;
  final place_picture;

  Relavent_places_list({
    this.place_picture,
    this.place_name,

});

  @override
  _Relavent_places_listState createState() => _Relavent_places_listState();
}

class _Relavent_places_listState extends State<Relavent_places_list> {
  var places_list = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
//      'price': 85,
//      'Size': 'M',
//      'Color': 'Black',
//      'quantity':1,
    },
    {
      'name': 'Shoes',
      'picture': 'images/products/hills1.jpeg',
//      'price': 80,
//      'Size': '7',
//      'Color': 'Red',
//      'quantity':1,
    },


  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: places_list.length,
        itemBuilder: (context,index){
          return Single_rellavent_places(
            cart_prod_name: places_list[index]['name'],
            //cart_prod_size: places_list[index]['Size'],
          //  cart_prod_qty: places_list[index]['quantity'],
           // cart_prod_price: places_list[index]['price'],
            cart_prod_picture: places_list[index]['picture'],
          //  cart_prod_color: places_list[index]['Color'],
          );
        });
  }
}


class Single_rellavent_places extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_picture;
//  final cart_prod_price;
//  final cart_prod_size;
//  final cart_prod_color;
//  final cart_prod_qty;

  Single_rellavent_places({
   // this.cart_prod_color,
    this.cart_prod_name,
    this.cart_prod_picture,
//    this.cart_prod_price,
//    this.cart_prod_qty,
//    this.cart_prod_size,
  });

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
//        child: if(this.cart_prod_name="waterfals"){
//      return new Waterfalls();
//    }else{
//    if(this.cart_prod_name="Antient Places"){
//    return new Waterfalls();
//    }
    ),

    );

  }

//  void addQuantity(){
//    this.cart_prod_qty=cart_prod_qty+1;
//  }
}
