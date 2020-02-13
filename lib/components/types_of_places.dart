import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp_tut/pages/product_details.dart';

class Types_of_places extends StatefulWidget {
  @override
  _Types_of_placesState createState() => _Types_of_placesState();
}

class _Types_of_placesState extends State<Types_of_places> {
  @override
  Widget build(BuildContext context) {
    var product_list = [
      {
        'name': 'Blazer',
        'picture': 'images/products/blazer1.jpeg',
        'old_price': 120,
        'price': 85,
      },
      {
        'name': 'Red dress',
        'picture': 'images/products/dress1.jpeg',
        'old_price': 100,
        'price': 65,
      },
      {
        'name': 'Shoe',
        'picture': 'images/products/hills1.jpeg',
        'old_price': 90,
        'price': 80,
      },
      {
        'name': 'Frog',
        'picture': 'images/products/skt1.jpeg',
        'old_price': 130,
        'price': 99,
      },
      {
        'name': 'Skirt',
        'picture': 'images/products/skt2.jpeg',
        'old_price': 100,
        'price': 77,
      },
      {
        'name': 'Ladies shirt',
        'picture': 'images/products/blazer2.jpeg',
        'old_price': 150,
        'price': 105,
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
              child: Single_prod1(
                prod_name: product_list[index]['name'],
                prod_picture: product_list[index]['picture'],
                prod_old_price: product_list[index]['old_price'],
                prod_price: product_list[index]['price'],
              ),
            );
          });
    }
  }
}

class Single_prod1 extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod1({
    this.prod_name,
    this.prod_old_price,
    this.prod_picture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 2"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      //here we are passing the value of the product to the product details page
                      product_detail_name: this.prod_name,
                      product_detail_new_price: this.prod_price,
                      product_detail_old_price: this.prod_old_price,
                      product_detail_picture: this.prod_picture,
                    ))),
            child: GridTile(
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        prod_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    new Text(
                      "\$${prod_price}",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
