import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  // Blueprint (Architecture) -> Copy -> 

  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,// So that image background is properly white
      child:Column(children: 
      [
        SizedBox(
          height: 60.0,
        ),
        Image.asset("assets/images/login_image.png"),
        SizedBox(
          height: 30.0,
        ),
        Text(
          "Login Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 30.0) ,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0,horizontal:0.0) ,
                child:TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        // hintText: "Enter Username",
                        
                      ),
                                  
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
              ) ,  

              // Button having shadow 
              ElevatedButton(
                onPressed: () => {
                print("Login button was pressed")
              }, 
              
              style: TextButton.styleFrom(
                minimumSize: const Size(190,50 ),
                shape: RoundedRectangleBorder(borderRadius :  BorderRadius.circular(30)),
              ) ,
              
              child: Text(
                "Login",
                style:TextStyle(
                  fontSize: 25,
                  
                ),
                textAlign: TextAlign.center,
              ),

              ) 
            ],   
          ),        
        )
      ],
      )
    );
  }
}
