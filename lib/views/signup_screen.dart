import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:signup_app/views/signin_screen.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
  body: Stack(
    children: [
      Positioned(
        top: 10,
        right: 0,
        left: 0,
        bottom: 10,
        child: Container(
          height: 700,
          width: MediaQuery.of(context).size.width -60,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          // decoration:  BoxDecoration(
          //     borderRadius: BorderRadius.circular(50)
          //     ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10,bottom: 30),
          child: Container(
            
            decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:Colors.white
                  ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text:"Please",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.bold,
                        color: Colors.blue,
                      ),
                      children: [
                        TextSpan(
                      text:"  Signup",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.bold,
                        color: Colors.redAccent
                      ),
                       ),
                  
                  
                      ],
                  )
                  ),
                ),
            const SizedBox(
              
              height:90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children:  [
                  buildTextField(
                    Icons.person,
                    "User Name", false ,false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  buildTextField(
                    Icons.email_outlined,
                    "Email", false ,true,
                    ),
                   const  SizedBox(
                      height: 10,
                    ),
                    buildTextField(
                    Icons.lock_clock_outlined,
                    "Password", true ,false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildTextField(
                    Icons.lock_clock_outlined,
                    "Confirm Password", true ,false,
                    ),
                   const SizedBox(
                      height: 10,
                    ),
                ],
              ),
            ),
             SizedBox(
               height: 20,
             ),
            Center(
              child: ElevatedButton(onPressed: (){}, 
              child: Text("Register",
              style: TextStyle(fontSize:20, fontWeight: FontWeight.bold,
              ),
              ),
            ),
            ),
            
             Center(
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 30),
                 child: InkWell(
                   onTap: () {
                     Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => const SigninScreen()));},
                   child: RichText(
                          text: const TextSpan(
                            text:"already have an account?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              color: Colors.blue,
                            ),
                            children: [
                              TextSpan(
                            text:"  Login",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              color: Colors.redAccent
                            ),
                             ),
                        
                        
                            ],
                        )
                        ),
                 ),
               ),
             ),


            ]
            ),
       
            
  ),
        ),
      ),
      
      ),
      
      ),
      
    ],
    
    ),
    
    );
  }

  TextField buildTextField(
    IconData icon, String hintText, bool isPassword, bool isEmail) {
    return TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress: TextInputType.text,
              decoration:  InputDecoration(
                prefixIcon:  Icon(
              (icon)
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(35))
                ),
                focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(35))
                ),
                  contentPadding: const EdgeInsets.all(10),
                hintText: hintText,
                hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              
              ),

            );
     
  }
}