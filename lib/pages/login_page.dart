import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/routes.dart';

class LoginPage extends StatefulWidget {
  // Blueprint (Architecture) -> Copy ->

  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white, // So that image background is properly white
        child: SingleChildScrollView(
          child: Column(
            children: [
              // AppBar(
              //   title: Text(
              //     'MyApp',
              //     style: TextStyle(
              //       color: Colors.white,

              //     ),

              //   ),

              // ),
              SizedBox(
                height: 60.0,
              ),
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Username",
                          // hintText: "Enter Username",
                        ),
                        onChanged: (value) {
                          name = value;
                          // Now set the State
                          setState(() {});
                        },
                      ),
                    ),
                    TextFormField(
                      // For passwords
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        // hintText: "Enter Username",
                      ),
                    ),
                    SizedBox(
                      height: 45.0,
                    ),

                    // Button having shadow
                    // ElevatedButton(
                    //   onPressed: () => {
                    //     // print("Login button was pressed"),
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute),
                    //   },
                    //   style: TextButton.styleFrom(
                    //     minimumSize: const Size(190, 50),
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(30)),
                    //   ),
                    //   child: Text(
                    //     "Login",
                    //     style: TextStyle(
                    //       fontSize: 25,
                    //     ),
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),

                    // To make any widget clickable
                    // 1. Wrap with Gesture detector => Does not give feedback
                    //2. Wrap with Inkwell => Gives some animation
                    InkWell(
                      onTap: ()async {
                        setState(() {
                          changedButton = true;
                        });
                        await Future.delayed(Duration(seconds:1));
                        // Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width:changedButton?50: 190,
                        // color:Colors.deepPurple,
                        alignment: Alignment.center,
                        child:changedButton?Icon(
                          Icons.done , 
                          color: Colors.white,
                          )
                          :
                           Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
