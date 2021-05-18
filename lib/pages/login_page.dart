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

  bool changedName = false;
  bool changedPassword = false;

  // So that we can use it anywhere
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(milliseconds: 500));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // In material Widget only color
        backgroundColor:
            Colors.white, // So that image background is properly white
        // appBar: AppBar(
        //   title:Text(
        //     'Rajs Application',
        //     style:TextStyle(
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          // reverse: true,
          // scrollDirection: Axis.vertical,
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
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
                  // padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 0.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Username",
                            // hintText: "Enter Username",
                          ),
                          validator: (value) {
                            if (name.isEmpty)
                              return "Username cannot be empty";
                            else
                              return null;
                          },
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
                        validator: (value) {
                          // if(changedPassword==false)
                          // {
                            if (value.isEmpty)
                              return "Password cannot be empty";
                            else if (value.length < 6 )
                              return "Password Length must be more than 6 characters";
                            else {
                              changedPassword = true;
                              setState(() {});
                              return null;
                            }
                          // }
                        },
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
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50.0),

                        // Inkwell needs to be wrapped up in Material Widget
                        child: InkWell(
                          onTap: () async {
                            moveToHome(context);
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 350),
                            height: 50,
                            width: changedButton ? 50 : 190,
                            // color:Colors.deepPurple,
                            alignment: Alignment.center,
                            child: changedButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
