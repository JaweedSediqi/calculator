import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  TextEditingController c1 = new TextEditingController();
  TextEditingController c2 = new TextEditingController();
  var g = 1;
  num res = 0;
    var  error1="";
    var error2="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tesst"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  controller: c1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "${error1}",),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  controller: c2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "${error2}",),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(

                child: Column(
                  children: [
                    RadioListTile(
                      title: Text("ADD"),
                      value: 1,
                      groupValue: g,
                      onChanged: (value) {
                        setState(() {
                          g = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("SUBSTRACTION"),
                      value: 2,
                      groupValue: g,
                      onChanged: (value) {
                        setState(() {
                          g = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("MULTIOLICATIO"),
                      value: 3,
                      groupValue: g,
                      onChanged: (value) {
                        setState(() {
                          g = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("DIVISION"),
                      value: 4,
                      groupValue: g,
                      onChanged: (value) {
                        setState(() {
                          g = value!;
                        });
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal.shade400),
                        onPressed: () {

                          setState(() {
                            if(c1.text==""){
                                  error1="Write your first number";
                                  return;
                            }else if(c2.text==""){
                                   error2="Write secound first number";
                                   return;
                            }





                            int a=int.parse(c1.text);
                            int b=int.parse(c2.text);
                            if(g==1){
                              res=a+b;
                            } else if(g==2){
                              res=a-b;
                            } else if(g==3){
                              res=a*b;
                            } else{
                              res=a/b;
                            }
                            c1.text="";
                            c2.text="";







                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Your result is ${res}"),
                                content:Text(""),
                              ),
                            );


                          });
                        },
                        child: Text("calculate")),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
