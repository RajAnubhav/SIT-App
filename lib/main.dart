import 'package:flutter/material.dart';
import 'package:untitled1/login.dart';
import 'package:untitled1/signup.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Siddaganga Institute of Technology, Tumakuru \t Karnataka, 572103",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 17,
                  ),),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/loginPage.png")
                  )
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 50,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                          // defining the shape
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20
                      ),
                    ),
                      ),
                    // creating the signup button
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 50,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                      },
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),

                    ),
                      )

                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
