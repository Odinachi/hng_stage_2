import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController inputValue = TextEditingController();

  List<Widget> input = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: Text(
                      'Odinachi David',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                ),
                Column(
                  children: input,
                ),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 300,
                      child: TextFormField(
                        onChanged: (value) {},
                        controller: inputValue,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: 'Input Text',
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            input.add(
                              Padding(
                                padding: EdgeInsets.all(18),
                                child: Text(
                                  inputValue.text,
                                  style: TextStyle(
                                      color: Colors.pinkAccent, fontSize: 27),
                                ),
                              ),
                            );
                          });
                          inputValue.clear();
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple,
                          ),
                          child: Text(
                            'Add',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
