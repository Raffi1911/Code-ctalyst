import 'package:CodeCatalyst/setting.dart';
import 'package:CodeCatalyst/settings_.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 70,),
            Text('Feedback'),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffe0eafc),Color(0xffcfdef3)
                ])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 55,),
            Text("Give us your feedback:",style: TextStyle(fontSize: 20),),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 120,
                child: TextFormField(
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Feedback',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 265,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateColor.transparent,
                  ),
                    onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=>Setting()));
                    },
                    child: Text("Post",style: TextStyle(color: Colors.black),)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
