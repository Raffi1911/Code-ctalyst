import 'package:CodeCatalyst/EditProfil.dart';
import 'package:CodeCatalyst/about.dart';

import 'package:CodeCatalyst/feedback.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=> Home()));
          },
          child: Icon(Icons.arrow_back)),
    ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffe0eafc),Color(0xffcfdef3)
                ])
        ),
        child: Column(
          children: [
            SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 1,),
                      Container(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('assets/images/pfp.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Username',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '@saithraffif23',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Nutech is Love',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 130,
                              height: 40,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey.shade200,
                                ),

                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Editpro(),
                                    ),
                                  );
                                },
                                child: Text('Edit Profile',style: TextStyle(color: Colors.black),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildStatColumn('Followers', '0'),
                            _buildStatColumn('Connections', '0'),
                            _buildStatColumn('Points', '0')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],),
            ));


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
}