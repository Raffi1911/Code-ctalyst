import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
String answer = '';
int count = 0;
String code = '';
bool isAnswerBox = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Text("Answers",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffe7f0fd),Color(0xffaccbee)
                ])
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                ListTile(
                  title: Text("Why std::cout does not print when g++ optimization is turned on?",
                      style: TextStyle(fontSize: 18,color: Colors.blue.shade900)),
                ),
                SizedBox(height: 15,),
                Padding(padding: EdgeInsets.all(10),
                  child: Text(
                    """Compile the code using g++ main.cc and run the generated executable will print hello.   But if compiled using g++ -O3 main.cc, the executable does not print.I compiled on linux use both g++ 8.5.0 and g++ 12.2.0.""",
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Comment',
                      hintStyle: TextStyle(color: Colors.blueGrey.shade700),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey.shade700),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: Text(
                    "Add an Answer",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    TextButton(onPressed: (){
                      setState(() {
                        isAnswerBox = true;
                      });
                    },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black
                      ),
                      child: Column(
                        children: [
                          Text("Answer Box",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey.shade700,
                            ),
                          ),
                          if(isAnswerBox)
                            Container(
                              height: 2,
                              width: 80,
                              color: Colors.black,
                            )
                        ],
                      ) ,

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(onPressed: (){
                      setState(() {
                        isAnswerBox = false;
                      });
                    },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white
                      ),
                      child: Column(
                        children: [
                          Text("Code Box",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey.shade700,
                            ),
                          ),
                          if(!isAnswerBox)
                            Container(
                              height: 2,
                              width: 80,
                              color: Colors.black,
                            )
                        ],
                      ),

                    ),
                  ],
                ),
                Container(
                  width: 320,
                  height: 120,
                  child: TextFormField(
                    style: TextStyle(color: isAnswerBox ? Colors.black : Colors.white),
                    decoration: InputDecoration(
                        hintText: isAnswerBox? "Answer":"Code",
                        hintStyle: TextStyle(color: isAnswerBox? Colors.black : Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: isAnswerBox? Colors.white:Colors.black,
                        filled: true
                    ),
                    maxLines: null,
                    expands: true,
                    minLines: null,
                    onSaved: (value){
                      isAnswerBox? answer = value.toString():code = value.toString();
                    },
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 285,),
                    FloatingActionButton(
                      onPressed: (){
                        setState(() {
                          count++;
                        });
                      },
                      child: Icon(Icons.arrow_upward_outlined,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.blue.shade900,
                      mini: true,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 300,),
                    Text(count.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey.shade700),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 285,),
                    FloatingActionButton(
                      onPressed: (){
                        setState(() {
                          count--;
                        });
                      },
                      child: Icon(Icons.arrow_downward_outlined,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.blue.shade900,
                      mini: true,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )


    );
  }
}
