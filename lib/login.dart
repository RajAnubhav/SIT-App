import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/signup.dart';
import 'package:untitled1/welcomePage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text("Login to your account",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700]
                    ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      inputFile(label: "Password", abscureText: true),
                    ],
                  ),
                ),
                // padding
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:40),
                      child:Container(
                          padding: EdgeInsets.only(top: 1, left: 1),
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
                              height: 60,
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                              },
                              color: Colors.green,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                              ),
                            ),
                        ),
                  ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text("Don't have an account"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SignupPage()));
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/homePage.jpg"),
                      fit: BoxFit.fitHeight
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}


// we will be creating a widget for text field
Widget inputFile({label, abscureText=false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.black87
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
          horizontal: 10,),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          )
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
