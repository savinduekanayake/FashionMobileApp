import 'package:flutter/material.dart';

class Historical_Places extends StatefulWidget {
  @override
  _Historical_PlacesState createState() => _Historical_PlacesState();
}

class _Historical_PlacesState extends State<Historical_Places> {
  @override
  var places_list = [
    {
      'name': 'Histotical1',
      'picture': 'images/products/blazer1.jpeg',
//      'price': 85,
//      'Size': 'M',
//      'Color': 'Black',
//      'quantity':1,
    },
    {
      'name': 'Histotical1',
      'picture': 'images/products/hills1.jpeg',
//      'price': 80,
//      'Size': '7',
//      'Color': 'Red',
//      'quantity':1,
    },
    {
      'name': 'Histotical1',
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
          return Single_historical(
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

class Single_historical extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_picture;


  Single_historical({

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
        subtitle: new Column(


          children: <Widget>[
            // ROW INSIDE COLUM
            new Row(
              children: <Widget>[

//      =========         this section is for the size of the product
//                Padding(
//                  padding: const EdgeInsets.all(0.0),
//                  child: new Text("Size"),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(4.0),
//                  child: new Text(cart_prod_size, style: TextStyle(color:  Colors.red),),
//                ),

                //      ===========             this action is for product color
//                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
//                  child: new Text("Color"),),
//                Padding(
//                  padding: const EdgeInsets.all(4.0),
//                  child: new Text(cart_prod_color, style: TextStyle(color:  Colors.red)),
//                ),


              ],
            ),

            //      ========                this section is product price

//            new Container(
//              alignment: Alignment.topLeft,
//              child: new Text("\$${cart_prod_price}", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.red),),
//            )

          ],
        ),
// ===========quantity up and down=============
        trailing: new Column(
          children: <Widget>[
            // new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            //  new Text("\$${cart_prod_qty}"),
            // new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
          ],
        ),
      ),
    );
  }

//  void addQuantity(){
//    this.cart_prod_qty=cart_prod_qty+1;
//  }
}