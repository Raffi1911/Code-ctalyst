import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  Post({super.key});

bool isQuestionBox = true;
String question = '';
String code = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context){
                  return StatefulBuilder(builder: (context,setState){
                    return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: SingleChildScrollView(
                            child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: MediaQuery.of(context).size.height * 0.5, // Set the minimum height to half of the screen height
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(25),
                                    ),
                                    color: Colors.blue.shade800,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text("Ask your coding confusions freely here: ",
                                        style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          SizedBox(width: 15,),
                                          TextButton(onPressed: (){
                                            setState(() {
                                              isQuestionBox = true;
                                            });
                                          },
                                            style: TextButton.styleFrom(
                                                foregroundColor: Colors.black
                                            ),
                                            child: Column(
                                              children: [
                                                Text("Question Box",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                if(isQuestionBox)
                                                  Container(
                                                    height: 2,
                                                    width: 80,
                                                    color: Colors.white,
                                                  )
                                              ],
                                            ) ,

                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          TextButton(onPressed: (){
                                            setState(() {
                                              isQuestionBox = false;
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
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                if(!isQuestionBox)
                                                  Container(
                                                    height: 2,
                                                    width: 80,
                                                    color: Colors.white,
                                                  )
                                              ],
                                            ),

                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 320,
                                        height: 150,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: isQuestionBox? "Question":"Code",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              fillColor: isQuestionBox? Colors.white:Colors.black,
                                              filled: true
                                          ),
                                          key: ValueKey('question'),
                                          maxLines: null,
                                          expands: true,
                                          minLines: null,
                                          onSaved: (value){
                                            isQuestionBox? question = value.toString():code = value.toString();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            )
                        )
                    );
                  }
                  );
                }
            );

          },
          child: Icon(Icons.add,color: Colors.white,),
          backgroundColor: Colors.blue.shade700,
        ),
      ),
       
    );
  }
}
