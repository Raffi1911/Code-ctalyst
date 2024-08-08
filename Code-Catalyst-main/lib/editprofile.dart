import 'package:flutter/material.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white10,
          title: Row(
            children: [
              SizedBox(width: 100,),
              Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
            ],
          )

        ),
        // body: Column(
        //   children: [
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Row(
        //       children: [
        //         Text("Username: ",style: TextStyle(fontSize: 15,color: Colors.white),),
        //         TextFormField(
        //           decoration: InputDecoration(
        //
        //           ),
        //         )
        //       ],
        //     )
        //   ],
        // ),
    );
  }
}
