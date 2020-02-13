import 'package:flutter/material.dart';
import 'package:shopapp_tut/main.dart';
import 'home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final  product_detail_new_price;
  final  product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
            child: Text('Fashapp')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){}),
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
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.product_detail_name, style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),

                    title: new Row(
                      children: <Widget>[

                        Expanded(
                          child: new Text("\$${widget.product_detail_old_price}",style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)
                        ),
                        Expanded(child: new Text("\$${widget.product_detail_new_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),))
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
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("choose the size"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("colse",style: TextStyle(color: Colors.blue),),)
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              //========size button=============
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Colors"),
                          content: new Text("choose a color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("colse",style: TextStyle(color: Colors.blue),),)
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              //========size button=============
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Qty"),
                          content: new Text("choose the Quantity"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("colse",style: TextStyle(color: Colors.blue),),)
                          ],
                        );
                      }
                  );
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
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
                  child: new Text("Buy now"),
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart),color:Colors.red, onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border), color:Colors.red, onPressed: (){})
            ],
          ),

          Divider(),

          new ListTile(
            title: new Text("product details"),

            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("${widget.product_detail_name}"),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("brand X"),)
         //     REMAINDER TO CREATE PRODUCT BRAND
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding : const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),
              ),

              //     REMAINDER TO add condition
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar products"),
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
                    new ProductDetails(
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