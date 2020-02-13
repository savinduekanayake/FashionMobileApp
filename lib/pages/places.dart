import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:shopapp_tut/components/horizontal_listView.dart';
import 'package:shopapp_tut/components/products.dart';
import 'package:shopapp_tut/components/types_of_places.dart';
//import 'package:shopapp_tut/components/home_page.dart';
import 'package:shopapp_tut/pages/cart.dart';

import 'package:shopapp_tut/components/types_of_places.dart';
import 'places.dart';
class Places extends StatefulWidget {

  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {

//    Widget image_carousel = new Container(
//      height: 200.0,
//      child: new Carousel(
//        boxFit: BoxFit.cover,
//        images: [
//          AssetImage('images/c1.jpg'),
//          AssetImage('images/m1.jpeg'),
//          AssetImage('images/m2.jpg'),
//          AssetImage('images/w1.jpeg'),
//          AssetImage('images/w3.jpeg'),
//          AssetImage('images/w4.jpeg'),
//
//        ],
//        autoplay: false,
////        animationCurve: Curves.fastLinearToSlowEaseIn,
////        animationDuration: Duration(milliseconds: 1000),
//
//        dotSize: 4.0,
//        //  dotColor: Colors.red,
//        indicatorBgPadding: 2.0,
//        dotBgColor: Colors.transparent,
//      ),
//    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Places'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white, onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
          })

        ],
      ),

//      drawer: new Drawer(
//        child: new ListView(
//          children: <Widget>[
// header
//            new UserAccountsDrawerHeader(
//              accountName: Text('Savindu Ekanayake'),
//              accountEmail: Text('sk.ekanayake1@gmail.com'),
//              currentAccountPicture: GestureDetector(
//                child: new CircleAvatar(
//                  backgroundColor: Colors.grey,
//                  child: Icon(Icons.person, color: Colors.white,),
//                ),
//              ),
//              decoration: new BoxDecoration(
//                color: Colors.red,
//              ),
//            ),
//
////    Body
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('Home Page'),
//                leading: Icon(Icons.home,color: Colors.red),
//              ),
//            ),
//
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('My Accounts'),
//                leading: Icon(Icons.person,color: Colors.red),
//              ),
//            ),
//
//
//            InkWell(
//              onTap: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Places()));
//              },
//              child: ListTile(
//                title: Text('Places'),
//                leading: Icon(Icons.dashboard,color: Colors.red),
//              ),
//            ),
//
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('Favourites'),
//                leading: Icon(Icons.favorite,color: Colors.red),
//              ),
//            ),
//
//            InkWell(
//              onTap: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
//              },
//              child: ListTile(
//                title: Text('Shopping cart'),
//                leading: Icon(Icons.shopping_cart, color: Colors.red,),
//              ),
//            ),
//
//            Divider(),
//
//            InkWell(
//                onTap: (){},
//                child: ListTile(
//                  title: Text('Settings'),
//                  leading: Icon(Icons.settings, ),
//                )
//            ),
//
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('About'),
//                leading: Icon(Icons.help,),
//              ),
//            )
//          ],
//        ),
//      ),


      body: new Column(
        children: <Widget>[
//==================== image carsousel begin here===========================
         // image_carousel,
//         padding widget
//          new Padding(padding: const EdgeInsets.all(8.0),
//            child: Container(
//                alignment: Alignment.centerLeft,
//                child: new Text('Places')),),

//horizontal list view begin here
       //   HorizontalList(),

// padding widget
          new Padding(padding: const EdgeInsets.all(10.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Types of places')),),


//grid view
          Flexible(child: Products()),


        ],
      ),
    );
  }
}
