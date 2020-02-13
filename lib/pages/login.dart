import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopapp_tut/pages/signup.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  SharedPreferences preferences;
  bool loading = false;
  bool isLogin = false;

  @override
  void initState() {
    super.initState();
//    isSignedIn();
  }

  void isSignedIn() async {
    setState(() {
      loading = true;
    });

    FirebaseUser user = await firebaseAuth.currentUser().then((user){
        if(user!= null){
          setState(()=> isLogin=true);
        }
    });
    preferences = await SharedPreferences.getInstance();
//    isLogin = await googleSignIn.isSignedIn(); //========================meka mn comment kare================================

 //======== auto log wela inna un comment karanna=========
    if (isLogin) {
      //  new Text("savindu");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => new HomePage()),
      );
    }
//===============================methanata yanakan mn comment kare=============
    setState(() {
      loading = false;
    });
  }

  Future handleSignedIn() async {
    preferences = await SharedPreferences.getInstance();

    setState(() {
      loading = true;
    });
//===========meka comment karap eka ain karanna
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication;
    //===========================
//    FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
//        idToken: googleSignInAuthentication.idToken,
//        accessToken: googleSignInAuthentication.accessToken);

    //=============methana idan==========
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final FirebaseUser firebaseUser =
        (await firebaseAuth.signInWithCredential(credential)).user;

// ==========methenta==============

    // ===============vedio eke================
//    GoogleSignInAccount googleUser = await googleSignIn.signIn();
//    GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;
//    AuthCredential credential = GoogleAuthProvider.getCredential(
//        idToken: googleSignInAuthentication.idToken,
//        accessToken: googleSignInAuthentication.accessToken);

//================

    if (firebaseUser != null) {
      final QuerySnapshot result = await Firestore.instance
          .collection("users")
          .where('id', isEqualTo: firebaseUser.uid)
          .getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      if (documents.length == 0) {
//    insert the user to our collection
        Firestore.instance
            .collection("users")
            .document(firebaseUser.uid)
            .setData({
          "id": firebaseUser.uid,
          "username": firebaseUser.displayName,
          "profilePicture": firebaseUser.photoUrl,
        });

//        await preferences.setString("id", firebaseUser.uid);
//        await preferences.setString("username", firebaseUser.displayName);
//        await preferences.setString("photoUrl", firebaseUser.displayName);
      } else {
        await preferences.setString("id", documents[0]['id']);
        await preferences.setString("username", documents[0]['username']);
        await preferences.setString("photoUrl", documents[0]['photoUrl']);
      }
      Fluttertoast.showToast(msg: "Login was successful");
      setState(() {
        loading = false;
      });

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    } else {
      Fluttertoast.showToast(msg: "Login failed :(");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/login.jpg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset("images/logo5.png"),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top:210.0),

              child: Center(
                child: Form(
                    key: _formKey,
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left:12.0),
                              child: TextFormField(
                                controller: _emailTextController,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  icon: Icon(Icons.alternate_email),
                                  border: InputBorder.none,
                                ),

                                validator: (value){
                                  if(value.isEmpty){
                                    Pattern pattern = r'^(s)$';
                                    RegExp reqex = new RegExp(pattern);
                                    if(!reqex.hasMatch(value))
                                      return "please make sue that email is valid";
                                    else
                                      return null;
                                  }
                                },
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left:12.0),
                              child: ListTile(
                                title: TextFormField(
                                  controller: _passwordTextController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Password",

                                    icon: Icon(Icons.lock_outline),
                                    border: InputBorder.none,
                                  ),

                                  validator: (value){
                                    if(value.isEmpty){
                                      return "The password fiel cannot be empty";

                                    }else if(value.length <6){
                                      return "password has to be at least 6 characters long";
                                    }
                                    return null;
                                  },


                                ),
                                trailing: Icon(Icons.remove_red_eye),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.blue,
                            elevation: 0.0,
                            child:MaterialButton(onPressed: (){},
                              minWidth: MediaQuery.of(context).size.width,
                              child: Text("Login", textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),),
                            ),

                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                              },
                              child: Text("Sign up",textAlign: TextAlign.center, style: TextStyle(color: Colors.red),)),
                        ),


                        Divider(color: Colors.white,),
                        Text("Other login in options",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.red,
                              elevation: 0.0,

                              child:MaterialButton(onPressed: (){
                                handleSignedIn();
                              },
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text("Google",textAlign: TextAlign.center,
                                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),),

                              ),
                          ),
                        ),

                      ],
                    )),
              ),

          ),
          Visibility(
            visible: loading ?? true,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.9),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
