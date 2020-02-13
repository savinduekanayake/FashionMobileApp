import 'package:flutter/material.dart';
import '../pages/place_details.dart';


class Waterfalls extends StatefulWidget {

  @override
  _WaterfallsState createState() => _WaterfallsState();
}

class _WaterfallsState extends State<Waterfalls> {
  var places_list = [
    {
      'name': 'Dunhida Waterfall',
      'picture': 'images/products/blazer1.jpeg',
//      'price': 85,
//      'Size': 'M',
//      'Color': 'Black',
//      'quantity':1,
    },
    {
      'name': 'waterfal2',
      'picture': 'images/products/hills1.jpeg',
//      'price': 80,
//      'Size': '7',
//      'Color': 'Red',
//      'quantity':1,
    },


  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text('Fashapp'),
//          actions: <Widget>[
//            new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){
////            Navigator.push(context, MaterialPageRoute(builder: (context)=> new  Place_details(
////              place_name: "Dunhida Waterfall",
////              rating: "5 Star",
////              open_time: "8AM to 5PM",
////              mode_of_access: "can access by vehical or foot",
////              product_detail_picture1: 'images/w4.jpeg',
////              product_detail_picture2: 'images/w3.jpeg',
////              product_detail_picture3: 'images/m1.jpeg',
////              location: "Badulla,Sri Lanka",
////              place_details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
////            )));
//            }
//            ),
//            new IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white, onPressed: (){
////            Navigator.push(context, MaterialPageRoute(builder: (context)=> new   Acomadation_details(
////              place_name: "Hilton hotel",
////              location: "Mount Lavinia, Dehiwala,Sri Lanka",
////              facilities: "A/C Rooms, Parking available, Free wifi, Outdoor pool",
////              rating: "5 Star",
////              discount: "\$75",
////              price: "\$100",
////              place_accomadation_details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
////              product_detail_picture1: 'images/w4.jpeg',
////              product_detail_picture2: 'images/w3.jpeg',
////              product_detail_picture3: 'images/m1.jpeg',
////            )));
//            }
//            )
//
//          ],
        ),
        body:new ListView.builder(
            itemCount: places_list.length,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new  Place_details(
              place_name: "Dunhida Waterfall",
              rating: "5 Star",
              open_time: "8AM to 5PM",
              mode_of_access: "can access by vehical or foot",
              product_detail_picture1: 'images/w4.jpeg',
              product_detail_picture2: 'images/w3.jpeg',
              product_detail_picture3: 'images/m1.jpeg',
              location: "Badulla,Sri Lanka",
              place_details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            )));
                },
                child:  Single_waterfal(
                  cart_prod_name: places_list[index]['name'],
                  //cart_prod_size: places_list[index]['Size'],
                  //  cart_prod_qty: places_list[index]['quantity'],
                  // cart_prod_price: places_list[index]['price'],
                  cart_prod_picture: places_list[index]['picture'],
                  //  cart_prod_color: places_list[index]['Color'],
                ),
              );




            })


    );


  }
}


class Single_waterfal extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_picture;


  Single_waterfal({

    this.cart_prod_name,
    this.cart_prod_picture,

  });

  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        // ==========LEADING SECTION IMAGE=========
        leading: new Image.asset(cart_prod_picture, width: 100.0,height: 100.0,),
        // ===========TITLE SECTION=========
        title: new Text(cart_prod_name),

// ===========SUBTITLE SECTION===========
//        subtitle: new Column(
//
//
//          children: <Widget>[
//            // ROW INSIDE COLUM
//            new Row(
//              children: <Widget>[
//
////      =========         this section is for the size of the product
////                Padding(
////                  padding: const EdgeInsets.all(0.0),
////                  child: new Text("Size"),
////                ),
////                Padding(
////                  padding: const EdgeInsets.all(4.0),
////                  child: new Text(cart_prod_size, style: TextStyle(color:  Colors.red),),
////                ),
//
//                //      ===========             this action is for product color
////                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
////                  child: new Text("Color"),),
////                Padding(
////                  padding: const EdgeInsets.all(4.0),
////                  child: new Text(cart_prod_color, style: TextStyle(color:  Colors.red)),
////                ),
//
//
//              ],
//            ),
//
//            //      ========                this section is product price
//
////            new Container(
////              alignment: Alignment.topLeft,
////              child: new Text("\$${cart_prod_price}", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.red),),
////            )
//
//          ],
//        ),
//// ===========quantity up and down=============
//        trailing: new Column(
//          children: <Widget>[
//            // new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
//            //  new Text("\$${cart_prod_qty}"),
//            // new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
//          ],
//        ),
      ),
    );
  }

//  void addQuantity(){
//    this.cart_prod_qty=cart_prod_qty+1;
//  }
}

