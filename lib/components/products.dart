import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp_tut/components/forests.dart';
import 'package:shopapp_tut/components/mountains.dart';
import 'package:shopapp_tut/components/rivers.dart';
import 'package:shopapp_tut/components/waterfalls.dart';
import 'package:shopapp_tut/pages/home.dart';
import 'package:shopapp_tut/pages/product_details.dart';
import 'cart_products.dart';
import 'relavant_places.dart';
import 'package:shopapp_tut/components/ancient_places.dart';
import 'package:shopapp_tut/components/historical_places.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Ancient Places',
      'picture': 'images/products/blazer1.jpeg',
//      'old_price': 120,
//      'price': 85,
    },
    {
      'name': 'Forests',
      'picture': 'images/products/dress1.jpeg',
//      'old_price': 100,
//      'price': 65,
    },
    {
      'name': 'Waterfalls',
      'picture': 'images/products/hills1.jpeg',
//      'old_price': 90,
//      'price': 80,
    },
    {
      'name': 'Rivers',
      'picture': 'images/products/skt1.jpeg',
//      'old_price': 130,
//      'price': 99,
    },
    {
      'name': 'Mountains',
      'picture': 'images/products/skt2.jpeg',
//      'old_price': 100,
//      'price': 77,
    },
    {
      'name': 'Historical Places',
      'picture': 'images/products/blazer2.jpeg',
//      'old_price': 150,
//      'price': 105,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext contex, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
//              prod_old_price: product_list[index]['old_price'],
//              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  List<String> listItem = ["Waterfalls","Rivers"];
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_old_price,
    this.prod_picture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Hero(
        tag: new Text("hero 1"),
        child: Material(

          child: InkWell(


            onTap: () {
              if ( this.prod_name == "Waterfalls") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Waterfalls()));
              }

                if (this.prod_name== "Rivers") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rivers()));

              }

              if (this.prod_name== "Forests") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Forests()));

              }

              if (this.prod_name== "Ancient Places") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ancient_Places()));

              }

              if (this.prod_name== "Mountains") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mountains()));

              }

              if (this.prod_name== "Historical Places") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Historical_Places()));

              }

              },


//          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//             builder: (context) =>
//             new  Waterfalls(
//
//              place_name: this.prod_name,
//              place_picture: this.prod_picture,
//         //  cart_prod_price:"",
//        //   cart_prod_size:"",
//          //     cart_prod_color:"",
//           //    cart_prod_qty:"",
//
         //    ))),







//            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//                builder: (context) => new ProductDetails(
//            //here we are passing the value of the product to the product details page
//                  product_detail_name: this.prod_name,
//                  product_detail_new_price: this.prod_price,
//                  product_detail_old_price: this.prod_old_price,
//                  product_detail_picture: this.prod_picture,
//                ))),
//




            child: GridTile(
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  ),
  //                new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), ),
                ],),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
