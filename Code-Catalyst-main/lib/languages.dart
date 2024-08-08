import 'package:flutter/material.dart';

import 'floating.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  bool _OthersSelected = false;
  bool _RubySelected = false;
  bool _AssemblySelected = false;
  bool _CsharpSelected = false;
  bool _CppSelected = false;
  bool _CSelected = false;
  bool _dartSelected = false;
  bool _ExilerSelected = false;
  bool _FsharpSelected = false;
  bool _FlaskSelected = false;
  bool _FlutterSelected = false;
  bool _GoSelected = false;
  bool _HaskellSelected = false;
  bool _javaSelected = false;
  bool _KotlinSelected = false;
  bool _LispSelected = false;
  bool _LuaSelected = false;
  bool _MongoDBSelected = false;
  bool _OcamlSelected = false;
  bool _phpSelected = false;
  bool _PythonSelected = false;
  bool _ReactSelected = false;
  bool _RocSelected = false;
  bool _RustSelected = false;
  bool _SQLSelected = false;
  bool _SwiftSelected = false;
  bool _TypeScriptSelected = false;
  bool _ZigSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 50,),
            Text("Languages",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _CppSelected = true;
                        _OthersSelected = false;
                         _AssemblySelected = false;
                        _RubySelected = false;
                         _CsharpSelected = false;
                         _CSelected = false;
                         _dartSelected = false;
                         _ExilerSelected = false;
                         _FsharpSelected = false;
                         _FlaskSelected = false;
                         _FlutterSelected = false;
                         _GoSelected = false;
                         _HaskellSelected = false;
                         _javaSelected = false;
                         _KotlinSelected = false;
                         _LispSelected = false;
                         _LuaSelected = false;
                         _MongoDBSelected = false;
                         _OcamlSelected = false;
                         _phpSelected = false;
                         _PythonSelected = false;
                         _ReactSelected = false;
                         _RocSelected = false;
                         _RustSelected = false;
                         _SQLSelected = false;
                         _SwiftSelected = false;
                         _TypeScriptSelected = false;
                         _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _CppSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/C++.png'),
                                  ),
                                ),
                                Text('C++',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _CSelected = true;
                        _OthersSelected = false;
                        _RubySelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _CSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/C.png'),
                                  ),
                                ),
                                Text('C',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _javaSelected = true;
                        _RubySelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _OthersSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _javaSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Java.png'),
                                  ),
                                ),
                                Text('Java',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                     setState(() {
                       _KotlinSelected = true;
                       _RubySelected = false;
                       _javaSelected = false;
                       _CSelected = false;
                       _CppSelected = false;
                       _AssemblySelected = false;
                       _CsharpSelected = false;
                       _dartSelected = false;
                       _ExilerSelected = false;
                       _FsharpSelected = false;
                       _FlaskSelected = false;
                       _FlutterSelected = false;
                       _GoSelected = false;
                       _OthersSelected = false;
                       _HaskellSelected = false;
                       _LispSelected = false;
                       _LuaSelected = false;
                       _MongoDBSelected = false;
                       _OcamlSelected = false;
                       _phpSelected = false;
                       _PythonSelected = false;
                       _ReactSelected = false;
                       _RocSelected = false;
                       _RustSelected = false;
                       _SQLSelected = false;
                       _SwiftSelected = false;
                       _TypeScriptSelected = false;
                       _ZigSelected = false;
                     });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              side: _KotlinSelected? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                    child: Image.asset('assets/logo/Kotlin.png'),
                                  ),
                                ),
                                Text('Kotlin',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _dartSelected = true;
                        _RubySelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _CSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _OthersSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _dartSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/dart.png'),
                                  ),
                                ),
                                Text('Dart',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _MongoDBSelected = true;
                        _RubySelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _OthersSelected = false;
                        _LuaSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _MongoDBSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Mongo DB.png'),
                                  ),
                                ),
                                Text('Mongo DB',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _phpSelected = true;
                        _RubySelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _OthersSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _phpSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/php.png'),
                                  ),
                                ),
                                Text('PHP',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _PythonSelected = true;
                        _RubySelected = false;
                        _KotlinSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _OthersSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              side: _PythonSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Python.png'),
                                  ),
                                ),
                                Text('Python',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _ReactSelected = true;
                        _RubySelected = false;
                        _dartSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _OthersSelected = false;
                        _CSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _ReactSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/React.png'),
                                  ),
                                ),
                                Text('React',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _SQLSelected = true;
                        _RubySelected = false;
                        _MongoDBSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _OthersSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _SQLSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/SQL.png'),
                                  ),
                                ),
                                Text('SQL',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _TypeScriptSelected = true;
                        _RubySelected = false;
                        _phpSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OthersSelected = false;
                        _OcamlSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _TypeScriptSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/TypeScript.png'),
                                  ),
                                ),
                                Text('Type Script',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _RustSelected = true;
                        _RubySelected = false;
                        _PythonSelected = false;
                        _KotlinSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _OthersSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              side: _RustSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Rust.png'),
                                  ),
                                ),
                                Text('Rust',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _SwiftSelected = true;
                        _RubySelected = false;
                        _ReactSelected = false;
                        _dartSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _CSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _OthersSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _SwiftSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Swift.png'),
                                  ),
                                ),
                                Text('Swift',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _FlaskSelected = true;
                        _RubySelected = false;
                        _SQLSelected = false;
                        _MongoDBSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _OthersSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _FlaskSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Flask.png'),
                                  ),
                                ),
                                Text('Flask',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _RubySelected = true;
                        _RustSelected = false;
                        _PythonSelected = false;
                        _KotlinSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _OthersSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              side: _RubySelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Ruby.png'),
                                  ),
                                ),
                                Text('Ruby',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _ZigSelected = true;
                        _LuaSelected = false;
                        _RubySelected = false;
                        _RustSelected = false;
                        _PythonSelected = false;
                        _KotlinSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _OthersSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _LispSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              side: _ZigSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Zig.png'),
                                  ),
                                ),
                                Text('Zig',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _ExilerSelected = true;
                        _SwiftSelected = false;
                        _RubySelected = false;
                        _ReactSelected = false;
                        _dartSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _CSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _OthersSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _ExilerSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Exilir Erlang.png'),
                                  ),
                                ),
                                Text('Exilir Erlang',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _LispSelected = true;
                        _FlaskSelected = false;
                        _RubySelected = false;
                        _SQLSelected = false;
                        _MongoDBSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LuaSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _OthersSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _LispSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Lisp.png'),
                                  ),
                                ),
                                Text('Lisp',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _OcamlSelected = true;
                        _TypeScriptSelected = false;
                        _RubySelected = false;
                        _phpSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OthersSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _OcamlSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Ocaml.png'),
                                  ),
                                ),
                                Text('OCAML',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _LuaSelected = true;
                        _RubySelected = false;
                        _RustSelected = false;
                        _PythonSelected = false;
                        _KotlinSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _LispSelected = false;
                        _OthersSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            color: Colors.white54,
                            shape: RoundedRectangleBorder(
                              side: _LuaSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Lua.png'),
                                  ),
                                ),
                                Text('Lua',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _GoSelected = true;
                        _ExilerSelected = false;
                        _SwiftSelected = false;
                        _RubySelected = false;
                        _ReactSelected = false;
                        _dartSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _CSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _OthersSelected = false;
                        _SQLSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _GoSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/GO.png'),
                                  ),
                                ),
                                Text('GO',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _FsharpSelected = true;
                        _LispSelected = false;
                        _FlaskSelected = false;
                        _RubySelected = false;
                        _SQLSelected = false;
                        _MongoDBSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LuaSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _OthersSelected = false;
                        _RustSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _FsharpSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/F#.png'),
                                  ),
                                ),
                                Text('F#',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _HaskellSelected = true;
                        _OcamlSelected = false;
                        _TypeScriptSelected = false;
                        _RubySelected = false;
                        _phpSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _KotlinSelected = false;
                        _OthersSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _HaskellSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Haskell.png'),
                                  ),
                                ),
                                Text('Haskell',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _AssemblySelected = true;
                        _HaskellSelected = false;
                        _OcamlSelected = false;
                        _TypeScriptSelected = false;
                        _RubySelected = false;
                        _phpSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _OthersSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _AssemblySelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/ASsembly.png'),
                                  ),
                                ),
                                Text('Assembly',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _FlutterSelected = true;
                        _GoSelected = false;
                        _ExilerSelected = false;
                        _SwiftSelected = false;
                        _RubySelected = false;
                        _ReactSelected = false;
                        _dartSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _CSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _OthersSelected = false;
                        _MongoDBSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _FlutterSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Flutter.png'),
                                  ),
                                ),
                                Text('Flutter',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _RocSelected = true;
                        _FsharpSelected = false;
                        _LispSelected = false;
                        _FlaskSelected = false;
                        _RubySelected = false;
                        _SQLSelected = false;
                        _MongoDBSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _HaskellSelected = false;
                        _javaSelected = false;
                        _KotlinSelected = false;
                        _OthersSelected = false;
                        _LuaSelected = false;
                        _OcamlSelected = false;
                        _phpSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RustSelected = false;
                        _SwiftSelected = false;
                        _TypeScriptSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _RocSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Roc.png'),
                                  ),
                                ),
                                Text('Roc',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _OthersSelected = true;
                        _HaskellSelected = false;
                        _OcamlSelected = false;
                        _TypeScriptSelected = false;
                        _RubySelected = false;
                        _phpSelected = false;
                        _javaSelected = false;
                        _CSelected = false;
                        _CppSelected = false;
                        _AssemblySelected = false;
                        _CsharpSelected = false;
                        _dartSelected = false;
                        _ExilerSelected = false;
                        _FsharpSelected = false;
                        _FlaskSelected = false;
                        _FlutterSelected = false;
                        _GoSelected = false;
                        _KotlinSelected = false;
                        _LispSelected = false;
                        _LuaSelected = false;
                        _MongoDBSelected = false;
                        _PythonSelected = false;
                        _ReactSelected = false;
                        _RocSelected = false;
                        _RustSelected = false;
                        _SQLSelected = false;
                        _SwiftSelected = false;
                        _ZigSelected = false;
                      });
                    },
                    child: Container(
                        height: 85,
                        width: 85,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              side: _OthersSelected ? BorderSide(color: Colors.white, width: 2) : BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white54,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset('assets/logo/Others.png'),
                                  ),
                                ),
                                Text('Others',
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                              ],
                            )
                        )
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
