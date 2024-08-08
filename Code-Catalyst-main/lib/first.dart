import 'package:CodeCatalyst/login.dart';
import 'package:CodeCatalyst/signup.dart';
import 'package:flutter/material.dart';
class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            width: 320,
            child: Image(
                image: AssetImage('assets/images/CodeCatalyst-high-resolution-logo-transparent.png')
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text("Log in",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade900,
                  padding: EdgeInsets.only(right: 25,left: 25,top: 10,bottom: 10),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=> Signup()
                      )
                  );
                },
                child: Text("Sign Up",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade900,
                  padding: EdgeInsets.only(right: 25,left: 25,top: 10,bottom: 10),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
