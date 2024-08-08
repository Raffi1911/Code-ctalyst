import 'package:CodeCatalyst/Answer3.dart';
import 'package:CodeCatalyst/Answer4.dart';
import 'package:CodeCatalyst/Asnwer5.dart';
import 'package:CodeCatalyst/ans2.dart';
import 'package:CodeCatalyst/faq.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final _formkey = GlobalKey<FormState>();

  String search = '';
  String _selectedLanguage = 'Select Language';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(width: 34),
            Image.asset(
              'assets/images/CatalystL.png',
              height: 25,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffe0eafc), Color(0xffcfdef3)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 7),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  Container(
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
                  Positioned(
                    right: 10,
                    top: 0,
                    bottom: 0,
                    child: DropdownButton<String>(
                      value: _selectedLanguage,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedLanguage = newValue!;
                        });
                      },
                      items: <String>[
                        'Select Language',
                        "HTML",
                        "CSS",
                        "JavaScript",
                        "Python",
                        "Assembly",
                        "C#",
                        "C++",
                        "C",
                        "Dart",
                        "Elixir",
                        "Erlang",
                        "F#",
                        "Flask",
                        "Flutter",
                        "Go",
                        "Haskell",
                        "Java",
                        "Kotlin",
                        "Lisp",
                        "Lua",
                        "MongoDB",
                        "OCaml",
                        "PHP",
                        "React",
                        "Roc",
                        "Ruby",
                        "Rust",
                        "SQL",
                        "Swift",
                        "TypeScript",
                        "Zig"
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Answer2()),
                          );
                        },
                        child: Card(
                          color: Color(0xff66a6ff),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "Why std::cout does not print when g++ optimization is turned on?",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  """Compile the code using g++ main.cc and run the generated executable will print hello. But if compiled using g++...""",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildStatColumn('1', 'Answers'),
                                    _buildStatColumn('3', 'Votes'),
                                    _buildStatColumn('7', 'Views'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Answer3()),
                          );
                        },
                        child: Card(
                          color: Color(0xff66a6ff),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "Navigation bar holding two custom search bars - height",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Tap here to get code......",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildStatColumn('1', 'Answers'),
                                    _buildStatColumn('9', 'Votes'),
                                    _buildStatColumn('51', 'Views'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Answer4()),
                          );
                        },
                        child: Card(
                          color: Color(0xff66a6ff),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "Definition of heap used by std::is_heap and std::make_heap",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "A random access range [first, last) is a heap with respect to....",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildStatColumn('1', 'Answers'),
                                    _buildStatColumn('9', 'Votes'),
                                    _buildStatColumn('51', 'Views'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Answer5()),
                          );
                        },
                        child: Card(
                          color: Color(0xff66a6ff),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "Turn off VSCode feature which shows matching braces out of sequence",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "VSCode has a feature which annoys me but I can't figure how to turn it off. Suppose I'm looking at some C++ code......",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildStatColumn('1', 'Answers'),
                                    _buildStatColumn('9', 'Votes'),
                                    _buildStatColumn('51', 'Views'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Answer2()),
                          );
                        },
                        child: Card(
                          color: Color(0xff66a6ff),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "Read serial port in flutter/dart",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  """As I mentioned in a previous comment the problem wasn't that my esp32 wasn't sending anything...""",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildStatColumn('1', 'Answers'),
                                    _buildStatColumn('7', 'Votes'),
                                    _buildStatColumn('15', 'Views'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Faq()),
          );
        },
        child: Text(
          "FAQ",
          style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
    );
  }

  Row _buildStatColumn(String count, String label) {
    return Row(
      children: [
        Text(
          count,
          style: TextStyle(
            color: Colors.blueGrey.shade700,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
