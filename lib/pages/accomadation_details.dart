import 'package:flutter/material.dart';
import 'home.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Acomadation_details extends StatefulWidget {
  final place_name;
  final price;
  final  rating;
  final  discount;
  final product_detail_picture1;
  final product_detail_picture2;
  final product_detail_picture3;
  final place_accomadation_details;
  final location;
  final facilities;

  Acomadation_details({
    this.place_name,
    this.price,
    this.rating,
    this.discount,
    this.product_detail_picture1,
    this.product_detail_picture2,
    this.product_detail_picture3,
    this.place_accomadation_details,
    this.location,
    this.facilities,
  });
  @override
  _Acomadation_detailsState createState() => _Acomadation_detailsState();
}

class _Acomadation_detailsState extends State<Acomadation_details> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage(widget.product_detail_picture1),
          AssetImage(widget.product_detail_picture2),
          AssetImage(widget.product_detail_picture3),

        ],
        autoplay: true,
//        animationCurve: Curves.fastLinearToSlowEaseIn,
//        animationDuration: Duration(milliseconds: 1000),

        dotSize: 4.0,
        //  dotColor: Colors.red,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
            child: Text(widget.place_name)),
        actions: <Widget>[
    //      new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){}),
          //  new IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white, onPressed: (){})

        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: image_carousel,
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.place_name, style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),

                  title: new Row(
                    children: <Widget>[

//                      Expanded(
//                          child: new Text("\${widget.discount}%",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)
//                      ),
                      Expanded(child: new Text("${widget.rating}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),))
                    ],
                  ),
                ),
              ),

            ),

          ),

//========== the first button ============

          Row(
            children: <Widget>[
              //========size button=============
//              Expanded(
//                child: MaterialButton(onPressed: (){
//                  showDialog(context: context,
//                      builder: (context){
//                        return new AlertDialog(
//                          title: new Text("Size"),
//                          content: new Text("choose the size"),
//                          actions: <Widget>[
//                            new MaterialButton(onPressed: (){
//                              Navigator.of(context).pop(context);
//                            },
//                              child: new Text("colse",style: TextStyle(color: Colors.blue),),)
//                          ],
//                        );
//                      }
//                  );
//                },
//                  color: Colors.white,
//                  textColor: Colors.grey,
//                  elevation: 0.2,
//                  child: Row(
//                    children: <Widget>[
//                      Expanded(
//                        child: new Text("Size"),
//                      ),
//                      Expanded(
//                        child: new Icon(Icons.arrow_drop_down),
//                      ),
//                    ],
//                  ),
//                ),
//              ),

              //========size button=============
//              Expanded(
//                child: MaterialButton(onPressed: (){
//                  showDialog(context: context,
//                      builder: (context){
//                        return new AlertDialog(
//                          title: new Text("Colors"),
//                          content: new Text("choose a color"),
//                          actions: <Widget>[
//                            new MaterialButton(onPressed: (){
//                              Navigator.of(context).pop(context);
//                            },
//                              child: new Text("colse",style: TextStyle(color: Colors.blue),),)
//                          ],
//                        );
//                      }
//                  );
//                },
//                  color: Colors.white,
//                  textColor: Colors.grey,
//                  elevation: 0.2,
//                  child: Row(
//                    children: <Widget>[
//                      Expanded(
//                        child: new Text("Color"),
//                      ),
//                      Expanded(
//                        child: new Icon(Icons.arrow_drop_down),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//
//              //========qty button=============
//              Expanded(
//                child: MaterialButton(onPressed: (){
//                  showDialog(context: context,
//                      builder: (context){
//                        return new AlertDialog(
//                          title: new Text("Qty"),
//                          content: new Text("choose the Quantity"),
//                          actions: <Widget>[
//                            new MaterialButton(onPressed: (){
//                              Navigator.of(context).pop(context);
//                            },
//                              child: new Text("colse",style: TextStyle(color: Colors.blue),),)
//                          ],
//                        );
//                      }
//                  );
//                },
//                  color: Colors.white,
//                  textColor: Colors.grey,
//                  elevation: 0.2,
//                  child: Row(
//                    children: <Widget>[
//                      Expanded(
//                        child: new Text("Qty"),
//                      ),
//                      Expanded(
//                        child: new Icon(Icons.arrow_drop_down),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
            ],
          ),

          //========== the second button ============

          Row(
            children: <Widget>[

              //========size button=============
              Expanded(
                child: MaterialButton(onPressed: (){

                },
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Reserve  for tonight"),
                ),
              ),

             // new IconButton(icon: Icon(Icons.add_shopping_cart),color:Colors.red, onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border), color:Colors.red, onPressed: (){})
            ],
          ),

          Divider(),

          new ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 12.0),
              child: new Text("Accomadation details"),
            ),

            subtitle: new Text(widget.place_accomadation_details),
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Hotel name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(" ${widget.place_name}"),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Price", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.price),)
              //     REMAINDER TO CREATE PRODUCT BRAND
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Location :", style: TextStyle(color: Colors.grey),),
              ),

              //     REMAINDER TO add condition
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.location),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Facilities", style: TextStyle(color: Colors.grey),),
              ),

              //     REMAINDER TO add condition
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.facilities),),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Places"),
          ),
          //          =======    SIMILAR PRODUCTS SECTION

          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}


class Similar_products extends StatefulWidget {

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 120,
      'price': 85,
    },

    {
      'name': 'Shoe',
      'picture': 'images/products/hills1.jpeg',
      'old_price': 90,
      'price': 80,
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
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
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
            onTap: () =>
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) =>
                    new Acomadation_details(
                      //here we are passing the value of the product to the product details page
                      place_name: this.prod_name,
                      rating: this.prod_price,
                   //   product_detail_old_price: this.prod_old_price,
                      product_detail_picture1: this.prod_picture,
                    ))),
            child: GridTile(
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: Text(
                      prod_name, style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 16.0),),
                  ),
                  new Text("\$${prod_price}", style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold),),
                ],),
              ),
            ),
          ),
        ),
      ),
    );
  }
}