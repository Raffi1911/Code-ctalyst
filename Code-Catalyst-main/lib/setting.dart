import 'package:CodeCatalyst/Acooting_Settings.dart';
import 'package:CodeCatalyst/home.dart';
import 'package:CodeCatalyst/login.dart';
import 'package:flutter/material.dart';
import 'Edit_Profile.dart';
import 'about.dart';
import 'feedback.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=>Home()));
          },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text("Settings"),
      ),
      body: Container(decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffe0eafc),Color(0xffcfdef3)
              ])
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              Icons.edit,
              color: Colors.blueGrey.shade700,
            ),
            title: Text(
              'Profile Edit',
              style: TextStyle(color: Colors.blueGrey.shade700),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (state)=>ProfileEdits()));
            },
          ),
          Divider(
            color: Colors.blueGrey.shade700,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blueGrey.shade700,
            ),
            title: Text(
              'Account Settings',
              style: TextStyle(color: Colors.blueGrey.shade700),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=>AccountSettings()));
            },
          ),
          Divider(color: Colors.blueGrey.shade700,),
          ListTile(
            leading: Icon(
              Icons.data_exploration_rounded,
              color: Colors.blueGrey.shade700,
            ),
            title: Text(
              'About',
              style: TextStyle(color: Colors.blueGrey.shade700),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage(),));
            },
          ),
          Divider(color: Colors.blueGrey.shade700),
          ListTile(
            leading: Icon(
              Icons.feedback,
              color: Colors.blueGrey.shade700,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(color: Colors.blueGrey.shade700),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Feed(),));
            },
          ),
          Divider(color: Colors.blueGrey.shade700),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.blueGrey.shade700,
            ),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.blueGrey.shade700),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=> Login()));
            },
          ),
        ],
      ),
      ),
    );
  }
}
