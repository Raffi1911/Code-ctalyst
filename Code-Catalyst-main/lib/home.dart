import 'package:CodeCatalyst/Profile_.dart';
import 'package:CodeCatalyst/floating.dart';
import 'package:CodeCatalyst/languages.dart';
import 'package:CodeCatalyst/prof.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffe0eafc),Color(0xffcfdef3)
          ])
        ),
        child: ListView(
             children: [
               Container(
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                       colors: [
                         Color(0xff8BC6EC),Color(0xff9599E2)
                       ]
                   ),
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                 ),
                 width: MediaQuery.of(context).size.width,
                 height: 260,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Stack(
                     children: [
                       Positioned(
                           top: 7,
                           left:1 ,
                           child: SizedBox(
                             height: 65,
                             child: InkWell(
                               child: CircleAvatar(
                                 radius: 50,
                                 backgroundImage: AssetImage('assets/images/pfp.jpg'),
                               ),
                               onTap: (){
                                   Navigator.pushReplacement(
                                     context,
                                     MaterialPageRoute(builder: (context) => ProfilePage()),
                                   );
                                 },
                             ),
                           )
                       ),
                       Positioned(
                         top: 10,
                           left: 100,
                           child: Text("Hey Username!",
                             style: TextStyle(
                               color: Colors.white,fontSize: 25
                           ),
                           ),
                       ),
                       Positioned(
                         left: 100,
                         top: 43,
                         child: Text("IGNITE YOUR LEARNING",style: TextStyle(
                           color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal
                       ),
                       ),
                       ),
                       Positioned(
                         bottom: 100,
                         left: -8,
                         child: Padding(
                           padding: EdgeInsets.only(right: 20, left: 20),
                           child: Container(
                             height: 45,
                             width: 320,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(25),
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey.withOpacity(0.2),
                                   spreadRadius: 1,
                                   blurRadius: 5,
                                 ),
                               ],
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: TextFormField(
                                 decoration: InputDecoration(
                                   hintText: 'Search',
                                   icon: Icon(Icons.search),
                                   border: InputBorder.none,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                       Positioned(
                         bottom: 15,
                         left: 25,
                         child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           _buildStatColumn('Questions', '0'),
                           SizedBox(width: 50,),
                           _buildStatColumn('Answers', '0'),
                           SizedBox(width: 60,),
                           _buildStatColumn('Rating', '100')
                         ],
                       ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(
                 height: 15,
               ),
               InkWell(
                 onTap: (){},
                   child: Container(
                     margin: EdgeInsets.only(left: 15,right: 15),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       gradient: LinearGradient(
                         begin: Alignment.topCenter,
                           end: Alignment.topCenter,
                           colors: [
                             Color(0xff89f7fe),Color(0xff66a6ff)
                           ]
                       )
                     ),
                       height: 120,
                       child: ListTile(
                         title: Text('Recent Questions',
                           style: TextStyle(color: Colors.black,
                               fontWeight: FontWeight.w100,
                               fontSize: 23
                           ),
                         ),
                         subtitle: Text('NO QUESTIONS UPLOADED SO FAR',style: TextStyle(color: Colors.black),),
                       )
                   ),
               ),
               SizedBox(height: 20,),
               InkWell(
                 onTap: (){},
                 child: Container(
                     margin: EdgeInsets.only(left: 15,right: 15),
                     height: 120,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         gradient: LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.topCenter,
                             colors: [
                               Color(0xff89f7fe),Color(0xff66a6ff)
                             ]
                         )
                     ),
                     child: ListTile(
                       title: Text('Your Answers',
                         style: TextStyle(color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 23
                         ),
                       ),
                       subtitle: Text('YOU GAVE NO ANSWERS SO FAR',style: TextStyle(color: Colors.black),),
                     )
                 ) ,
               ),
               SizedBox(height: 20,),
               InkWell(
                 onTap: (){},
                 child: Container(
                     margin: EdgeInsets.only(left: 15,right: 15),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         gradient: LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.topCenter,
                             colors: [
                               Color(0xff89f7fe),Color(0xff66a6ff)
                             ]
                         )
                     ),
                   height: 100,
                   child: ListTile(
                     title: Text('Most Liked Answer',
                       style: TextStyle(color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 23
                       ),
                     ),
                     subtitle: Text('YOU GAVE NO ANSWERS SO FAR',style: TextStyle(color: Colors.black),),
                   )
               ),
               ),
               SizedBox(height: 20,),
               InkWell(
                 onTap: (){},
                 child: Container(
                     margin: EdgeInsets.only(left: 15,right: 15),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         gradient: LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.topCenter,
                             colors: [
                               Color(0xff89f7fe),Color(0xff66a6ff)
                             ]
                         )
                     ),
                   height: 120,
                   child: ListTile(
                     title: Text('Most Replied Question',
                       style: TextStyle(color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 23
                       ),
                     ),
                     subtitle: Text('NO QUESTIONS UPLOADED SO FAR',style: TextStyle(color: Colors.black),),
                   )
               ),
               ),

             ]
              ),
      ),
          floatingActionButton: FloatingActionButton(
                  onPressed: () {
                showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context){
            return Floating();
          }
                );
              },
              child: Icon(Icons.add,color: Colors.white,),
              backgroundColor: Colors.blue.shade800,
              ),
      );
  }
}
Column _buildStatColumn(String label, String count) {
  return Column(
    children: [
      Text(
        count,
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 4),
      Text(
        label,
        style: TextStyle(
          color: Colors.blueGrey.shade700,
          fontSize: 14,
        ),
      ),
    ],
  );
}
