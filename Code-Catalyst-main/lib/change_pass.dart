import 'package:flutter/material.dart';

class ChangePass extends StatelessWidget {
   ChangePass({super.key});
  final _formkey = GlobalKey<FormState>();
  String pre_pass = '';
  String new_pass = '';
  String confirm_pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CodeCatalyst",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
        body:
        Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Container(
                            child: Text("Current Password : ",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Password",
                              ),
                              key: ValueKey('pre_pass'),
                              validator: (value){
                                if(value.toString().isEmpty){
                                  return "Username cannot be empty";
                                }
                                else{
                                  return null;
                                }
                              },
                              onSaved: (value){
                                pre_pass = value.toString();
                              },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            child: Text("New Password : ",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "New Password",
                              ),
                              key: ValueKey('new_pass'),
                              validator: (value){
                                if(value.toString().isEmpty){
                                  return "Password cannot be empty";
                                }
                                else{
                                  return null;
                                }
                              },
                              onSaved: (value){
                                new_pass = value.toString();
                              },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            child: Text("Confirm Password : ",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
                              ),
                              key: ValueKey('confirm_pass'),
                              validator: (value){
                                if(value.toString().isEmpty){
                                  return "Password cannot be empty";
                                }
                                else{
                                  return null;
                                }
                              },
                              onSaved: (value){
                                confirm_pass = value.toString();
                              },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: (){
                            },
                            child: Text("Set Password",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.only(right: 25,left: 25,top: 10,bottom: 10),
                            ),
                          )
                        ],
                      )
                  )
              ),
            ]
        )
    );
  }
}
