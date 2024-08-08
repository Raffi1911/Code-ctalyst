import 'package:CodeCatalyst/home.dart';
import 'package:flutter/material.dart';

import 'languages.dart';

class Floating extends StatefulWidget {
  const Floating({super.key});

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  bool isQuestionBox = true;
  bool isTagBox = false;
  bool isTagSelected = false;
  bool _javaScriptSelected = false;
  bool _HTMLSelected = false;
  bool _CSSSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.55,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(25),
              ),
              color: Color(0xff66a6ff),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 15),
                Text(
                  "Ask your coding confusions freely here:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 15),
                    _buildTabButton("Question Box", isQuestionBox, () {
                      setState(() {
                        isQuestionBox = true;
                        isTagBox = false;
                        isTagSelected = false;
                      });
                    }),
                    SizedBox(width: 10),
                    _buildTabButton("Code Box", !isQuestionBox && !isTagBox, () {
                      setState(() {
                        isQuestionBox = false;
                        isTagBox = false;
                        isTagSelected = false;
                      });
                    }),
                    SizedBox(width: 10),
                    _buildTabButton("Add Tags", isTagBox, () {
                      setState(() {
                        isTagBox = true;
                        isQuestionBox = false;
                        isTagSelected = false;
                      });
                    }),
                  ],
                ),
                if (isQuestionBox) _buildQuestionBox(),
                if (!isQuestionBox && !isTagBox) _buildCodeBox(),
                if (isTagBox && !isTagSelected) _buildTagBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabButton(String text, bool isActive, VoidCallback onTap) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(foregroundColor: Colors.black),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          if (isActive)
            Container(
              height: 2,
              width: 80,
              color: Colors.white,
            ),
        ],
      ),
    );
  }

  Widget _buildQuestionBox() {
    return Column(
      children: [
        Container(
          width: 320,
          height: 120,
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: "Question",
              hintStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            maxLines: null,
            expands: true,
            minLines: null,
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Select programming language:",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 5),
            _buildLanguageOption('JavaScript', 'assets/logo/Java Script.png',
                _javaScriptSelected, () {
                  setState(() {
                    _javaScriptSelected = true;
                    _HTMLSelected = false;
                    _CSSSelected = false;
                  });
                }),
            SizedBox(width: 5),
            _buildLanguageOption(
                'HTML', 'assets/logo/HTML.png', _HTMLSelected, () {
              setState(() {
                _javaScriptSelected = false;
                _HTMLSelected = true;
                _CSSSelected = false;
              });
            }),
            SizedBox(width: 5),
            _buildLanguageOption('CSS', 'assets/logo/CSS.png', _CSSSelected, () {
              setState(() {
                _javaScriptSelected = false;
                _HTMLSelected = false;
                _CSSSelected = true;
              });
            }),
            SizedBox(width: 5),
            _buildLanguageOption('All', '', false, () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=>Languages()));
            }),
          ],
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=>Home()));
          },
          child: Text(
            "Post",
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white54,
          ),
        ),
      ],
    );
  }

  Widget _buildCodeBox() {
    return Column(
      children: [
        Container(
          width: 320,
          height: 120,
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Code",
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Colors.black,
              filled: true,
            ),
            maxLines: null,
            expands: true,
            minLines: null,
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Select programming language:",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 5),
            _buildLanguageOption('JavaScript', 'assets/logo/Java Script.png',
                _javaScriptSelected, () {
                  setState(() {
                    _javaScriptSelected = true;
                    _HTMLSelected = false;
                    _CSSSelected = false;
                  });
                }),
            SizedBox(width: 5),
            _buildLanguageOption(
                'HTML', 'assets/logo/HTML.png', _HTMLSelected, () {
              setState(() {
                _javaScriptSelected = false;
                _HTMLSelected = true;
                _CSSSelected = false;
              });
            }),
            SizedBox(width: 5),
            _buildLanguageOption('CSS', 'assets/logo/CSS.png', _CSSSelected, () {
              setState(() {
                _javaScriptSelected = false;
                _HTMLSelected = false;
                _CSSSelected = true;
              });
            }),
            SizedBox(width: 5),
            _buildLanguageOption('All', '', false, () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=>Languages()));
            }),
          ],
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (state)=> Home()));
          },
          child: Text(
            "Post",
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white54,
          ),
        ),
      ],
    );
  }

  Widget _buildTagBox() {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: [
        _buildTag('JavaScript'),
        _buildTag('HTML'),
        _buildTag('CSS'),
        _buildTag('C++'),
        _buildTag('C'),
        _buildTag('Java'),
        _buildTag('Kotlin'),
        _buildTag('Dart'),
        _buildTag('PHP'),
        _buildTag('Python'),
        _buildTag('React'),
        _buildTag('SQL'),
      ],
    );
  }

  Widget _buildLanguageOption(String language, String assetPath,
      bool isSelected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 85,
        width: 85,
        child: Card(
          shape: RoundedRectangleBorder(
            side: isSelected
                ? BorderSide(color: Colors.white, width: 2)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.white54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  height: 50,
                  width: 50,
                  child: assetPath.isNotEmpty
                      ? Image.asset(assetPath)
                      : Icon(Icons.language, size: 50, color: Colors.white),
                ),
              ),
              Text(
                language,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String tagName) {
    return ChoiceChip(
      label: Text(tagName),
      selected: false,
      onSelected: (selected) {
        setState(() {
          isTagBox = false;
          isTagSelected = true;
        });
      },
      backgroundColor: Colors.white,
      selectedColor: Colors.grey,
    );
  }
}
