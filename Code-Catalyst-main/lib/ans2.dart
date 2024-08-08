import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({Key? key}) : super(key: key);

  @override
  State<Answer2> createState() => _Answer2State();
}

class _Answer2State extends State<Answer2> {
  String answer = '';
  int count = 0;
  String question = '';
  bool isAnswerBox = true;
  String code = '';
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
                    title: Text("Read serial port in flutter/dart",
                        style: TextStyle(fontSize: 18,color: Colors.blue.shade900)),
                  ),
                  SizedBox(height: 15,),
                  Padding(padding: EdgeInsets.all(10),
                    child: Text(
                      """As I mentioned in a previous comment the problem wasn't that my esp32 wasn't sending anything. I could read the output of serial port in other ways than using flutter. The problem was about a possible bug detailed here: https://github.com/jpnurmi/libserialport.dart/issues/24 And the workaround is to first copy the existing config from the serial port, then change it, then assign the copy back to the serial port:
                      
SerialPortReader reader = SerialPortReader(serialPort);   
serialPort.openReadWrite();   
SerialPortConfig config = serialPort.config; 
config.baudRate = 115200;   
serialPort.config = config;    
Also another workaround, which wasn't an option for me, is to use a lower baudrate(9600).""",
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
