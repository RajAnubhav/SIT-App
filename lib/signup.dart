import 'package:flutter/material.dart';
import 'package:untitled1/login.dart';
class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Sign up",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("Create a new account",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700]
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Username"),
                      inputFile(label: "Email"),
                      inputFile(label: "Password", abscureText: true),
                      inputFile(label: "Confirm Password", abscureText: true),
                    ],
                  ),
                ),
                // padding
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:60),
                  child:Container(
                    padding: EdgeInsets.only(left: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color:Colors.black),
                          top: BorderSide(color:Colors.black),
                          left: BorderSide(color:Colors.black),
                          right: BorderSide(color:Colors.black),
                        )
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 50,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      color: Colors.green,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),


                Container(
                  // padding: EdgeInsets.only(top: 10),
                  height: 2,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage("assets/homePage.jpg"),
                  //       fit: BoxFit.fitHeight
                  //   ),
                  // ),
                )
              ],
            ))
          ],
        ),
      ),
        );
      // );
  }
}

