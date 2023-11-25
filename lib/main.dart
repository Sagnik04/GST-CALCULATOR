import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var NumberText = TextEditingController();
  var OptionText = TextEditingController();
  final GlobalKey<FormState> _key1 = GlobalKey<FormState>();
  var Value1;
  double? result=0,num=0,gst=0,gst1=0;

  calculate(){
    setState(() {
      num = double.parse(NumberText.text);
      gst = (num!*18)/(100);
      result = num! + gst!;
      gst1 = (18)/(2);
    });
  }

  calculate1(){
    setState(() {
      num = double.parse(NumberText.text);
      gst = (num!*3)/(100);
      result = num! + gst!;
      gst1 = (3)/(2);
    });
  }

  calculate2(){
    setState(() {
      num = double.parse(NumberText.text);
      gst = (num!*5)/(100);
      result = num! + gst!;
      gst1 = (5)/(2);
    });
  }

  calculate3(){
    setState(() {
      num = double.parse(NumberText.text);
      gst = (num!*12)/(100);
      result = num! + gst!;
      gst1 = (12)/(2);
    });
  }

  calculate4(){
    setState(() {
      num = double.parse(NumberText.text);
      gst = (num!*28)/(100);
      result = num! + gst!;
      gst1 = (28)/(2);
    });
  }



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.redAccent,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("GST Calculator"),
      ),
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffd4fc79),Color(0xff96e6a1)
              ]
            )
          ),
          child: Form(
            key: _key1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100,left: 8,right: 8),
                  child: TextFormField(
                    controller: NumberText,
                    keyboardType: TextInputType.number,
                    validator: (Value1){
                      if(Value1!.isEmpty){
                        return "Enter the price";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black
                        )
                      ),
                      hintText: "Enter the Original Price",hintStyle: TextStyle(color: Colors.black)

                    ),


                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        if(_key1.currentState!.validate()){
                         calculate1();
                         NumberText.clear();
                        }


                      }, child: Text("3%",style: TextStyle(color: Colors.red),)),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        if(_key1.currentState!.validate()){
                          calculate2();
                          NumberText.clear();
                        }


                      }, child: Text("5%",style: TextStyle(color: Colors.red),)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        if(_key1.currentState!.validate()){
                          calculate3();
                          NumberText.clear();
                        }


                      }, child: Text("12%",style: TextStyle(color: Colors.red),)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),


                Row(
                  children: [
                    SizedBox(
                      width: 85,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        if(_key1.currentState!.validate()){
                          calculate();
                          NumberText.clear();
                        }


                      }, child: Text("18%",style: TextStyle(color: Colors.red),)),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: TextButton(onPressed: (){
                        if(_key1.currentState!.validate()){
                          calculate4();
                          NumberText.clear();
                        }


                      }, child: Text("28%",style: TextStyle(color: Colors.red),)),
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),
               Text("Results: $result",style: TextStyle(color: Colors.black,fontSize: 30),),
                Text("CGST/SGST: $gst1",style: TextStyle(color: Colors.black,fontSize: 20),)
              ],
            ),
          ),
        ),
      )
    );
  }
}
