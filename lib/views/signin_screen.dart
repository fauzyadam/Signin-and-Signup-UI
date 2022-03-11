import 'package:flutter/material.dart';
import 'package:signup_app/views/signup_screen.dart';



class SigninScreen extends StatelessWidget {
  const SigninScreen({ Key? key }) : super(key: key);

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
                const SizedBox(
                  height: 200,
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
                      text:"  Signin",
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
              
              height:50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children:  [
                  const TextField(
    obscureText: false,

            decoration:  InputDecoration(
              prefixIcon:  Icon(
            (Icons.person)
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(35))
              ),
              focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(35))
              ),
                contentPadding: EdgeInsets.all(10),
              hintText: "Enter User Name",
              hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            
            ),

          ),
                  const SizedBox(
                      height: 10,
                    ),
       
                   const  SizedBox(
                      height: 10,
                    ),
                   const  TextField(
      obscureText: true,
     
              decoration:  InputDecoration(
                prefixIcon:  Icon(
              (Icons.lock_clock_outlined)
                ),
                enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(35))
                ),
                focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(35))
                ),
                  contentPadding:  EdgeInsets.all(10),
                hintText: "Enter Password",
                hintStyle:  TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              
              ),

            ),
                const  SizedBox(
                      height: 30,
                    ),
                Container(
                  width: 150,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.bottomCenter,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15),),
                    boxShadow: <BoxShadow> [ 
                      BoxShadow(color: Colors.grey,),
                   
                    ],
                  color: Colors.blue,
                  
                    ),
                 child: const Text(
                   "Login",
                   style: TextStyle(
                     fontSize:20,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                   ),
                    ),
                      const SizedBox(
                      height: 10,
                    ),
                    const Text(
                "Forgot Password?",
                style:  TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black38
              ),
              ),
              
               Padding(
                 padding: const EdgeInsets.only(bottom:0,left: 20,),
                 child: InkWell(
             onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => const SignupScreen()));
                   },
             child: Container(
                        margin:const EdgeInsets.only(top: 40),
                        padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
                        decoration: BoxDecoration(
                        
                          borderRadius: BorderRadius.circular(20),
                        ),  
                      
                        child:  Padding(
                          padding:  const EdgeInsets.only(left: 70, top: 10, right: 10),
                             child: RichText(
                          text: const TextSpan(
                            text:"New User?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight:FontWeight.bold,
                              color: Colors.blue,
                            ),
                            children: [
                              TextSpan(
                            text:"  Register",
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
               ),
                ],
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
}