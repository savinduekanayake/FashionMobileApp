import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:shopapp_tut/components/horizontal_listView.dart';
import 'package:shopapp_tut/components/products.dart';
import 'package:shopapp_tut/pages/accomadation_details.dart';
//import 'package:shopapp_tut/components/home_page.dart';
import 'package:shopapp_tut/pages/cart.dart';
import 'places.dart';
import 'place_details.dart';
import 'product_details.dart';
import 'package:firebase_auth/firebase_auth.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//  Future<void> signOut() async{
//    await FirebaseAuth.instance.signOut();
//  }


  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),

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
        title: Text('Fashapp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){
//            Navigator.push(context, MaterialPageRoute(builder: (context)=> new  Place_details(
//              place_name: "Dunhida Waterfall",
//              rating: "5 Star",
//              open_time: "8AM to 5PM",
//              mode_of_access: "can access by vehical or foot",
//              product_detail_picture1: 'images/w4.jpeg',
//              product_detail_picture2: 'images/w3.jpeg',
//              product_detail_picture3: 'images/m1.jpeg',
//              location: "Badulla,Sri Lanka",
//              place_details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//            )));
          }
          ),
          new IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white, onPressed: (){
//            Navigator.push(context, MaterialPageRoute(builder: (context)=> new   Acomadation_details(
//              place_name: "Hilton hotel",
//              location: "Mount Lavinia, Dehiwala,Sri Lanka",
//              facilities: "A/C Rooms, Parking available, Free wifi, Outdoor pool",
//              rating: "5 Star",
//              discount: "\$75",
//              price: "\$100",
//              place_accomadation_details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//              product_detail_picture1: 'images/w4.jpeg',
//              product_detail_picture2: 'images/w3.jpeg',
//              product_detail_picture3: 'images/m1.jpeg',
//            )));
          }
          )

        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
// header
            new UserAccountsDrawerHeader(
              accountName: Text('Savindu Ekanayake'),
              accountEmail: Text('sk.ekanayake1@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

//    Body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.red),
              ),
            ),

//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('My Accounts'),
//                leading: Icon(Icons.person,color: Colors.red),
//              ),
//            ),


            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Places()));
              },
              child: ListTile(
                title: Text('Places'),
                leading: Icon(Icons.dashboard,color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, ),
                )
            ),

            InkWell(
              onTap: (){

              },
              child: ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.call_missed,),
              ),
            )
          ],
        ),
      ),


      body: new Column(
        children: <Widget>[
//==================== image carsousel begin here===========================
    //      image_carousel,
//         padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Map1')),),

//horizontal list view begin here
  //        HorizontalList(),

// padding widget
//          new Padding(padding: const EdgeInsets.all(10.0),
//            child: Container(
//                alignment: Alignment.centerLeft,
//                child: new Text('Recent Products')),),


//grid view
   //       Flexible(child: Products()),


        ],
      ),
    );
  }
}