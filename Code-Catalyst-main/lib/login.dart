import 'package:CodeCatalyst/signup.dart';
import 'package:flutter/material.dart';
import 'BottomNav.dart';
class Login extends StatelessWidget {
   Login({super.key});
  final _formkey = GlobalKey<FormState>();
  String username = '';
  String pass = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
           gradient: LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
               colors: [
                 Color(0xffe7f0fd),Color(0xffaccbee)
               ])
       ),
       child: SingleChildScrollView(
           child: Column(
               children: [
                 SizedBox(
                   height: 60,
                 ),
                 Container(
                   width: 300,
                   child: Image(
                       image: AssetImage('assets/images/CatalystLogo.png')
                   ),
                 ),
                 Center(
                     child: Form(
                         key: _formkey,
                         child: Column(
                           children: [
                             SizedBox(
                               height: 60,
                             ),
                             Container(
                               width: 320,
                               height: 50,
                               child: TextFormField(
                                 decoration: InputDecoration(
                                     hintText: "Username",
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(10),

                                     ),
                                     fillColor: Colors.white,
                                     filled: true
                                 ),
                                 key: ValueKey('username'),
                                 onSaved: (value){
                                   username = value.toString();
                                 },
                               ),
                             ),
                             SizedBox(
                               height: 30,
                             ),
                             Container(
                               width: 320,
                               height: 50,
                               child: TextFormField(
                                 decoration: InputDecoration(
                                     hintText: "Password",
                                     border: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(10)
                                     ),
                                     filled: true,
                                     fillColor: Colors.white
                                 ),
                                 key: ValueKey('pass'),
                                 validator: (value){
                                   if(value.toString().isEmpty){
                                     return "Password cannot be empty";
                                   }
                                   else{
                                     return null;
                                   }
                                 },
                                 onSaved: (value){
                                   pass = value.toString();
                                 },
                               ),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 TextButton(
                                     onPressed: (){},
                                     child: Text("Forgot Password?",
                                       style: TextStyle(
                                           fontSize: 16,
                                           color: Colors.blue.shade700
                                       ),)
                                 )
                               ],
                             ),
                             SizedBox(
                               height: 20,
                             ),
                             Container(
                               height: 50,
                               width: 320,
                               child:
                               ElevatedButton(
                                 onPressed: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => BottomNav(),
                                       )
                                   );
                                 },
                                 child: Text("Log in",
                                   style: TextStyle(
                                       fontSize: 22,
                                       color: Colors.black
                                   ),
                                 ),
                                 style: ElevatedButton.styleFrom(
                                   backgroundColor: Colors.blue,
                                   padding: EdgeInsets.only(right: 25,left: 25,top: 5,bottom: 5),
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20)
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(
                               height: 20,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Don't have an account?",
                                   style: TextStyle(
                                       fontSize: 16,
                                       color: Colors.black
                                   ),
                                 ),
                                 TextButton(
                                     onPressed: (){
                                       Navigator.push(context,
                                           MaterialPageRoute(builder: (context) => Signup(),)
                                       );
                                     },
                                     child: Text("Sign up",
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 16,
                                           color: Colors.blue.shade700
                                       ),
                                     )
                                 ),
                               ],
                             ),
                             SizedBox(
                               height: 20,
                             ),
                             ElevatedButton(
                                 onPressed: (){},
                                 child: Container(
                                   height: 42,
                                   width: 250,
                                   child:
                                   Stack(
                                       children: [
                                         SizedBox(
                                             height: 35,
                                             child:Padding(padding: EdgeInsets.only(top: 5),
                                               child:Image.asset('assets/images/google.png',
                                               ),
                                             )
                                         ),
                                         Positioned(
                                             right: 10,
                                             top: 7,
                                             child: Text("Continue with Google",
                                               style: TextStyle(
                                                   fontSize: 20,
                                                   fontWeight: FontWeight.bold,
                                                   color: Colors.black
                                               ),
                                             )
                                         )
                                       ]
                                   ),
                                 )
                             )
                           ],
                         )
                     )
                 ),
               ]
           ),
         ),
     ),
    );
  }
}
