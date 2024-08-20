import 'package:flutter/material.dart';
import 'package:new_one/Splash.dart';
import 'package:new_one/UI/theme.dart';
import 'package:intl/intl.dart';
import 'package:new_one/calculation.dart';
import 'package:new_one/widgets/button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          textTheme: TextTheme(
            headlineLarge: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const themeColor1 = Color(0xFF3E67AC);
  static const themeColor2 = Color(0xFF31A1E4);

  var nameField = TextEditingController();
  var ageField = TextEditingController();
  var heightField = TextEditingController();
  var weightField = TextEditingController();
  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(children: [
              Image.asset(
                'assets/images/LOGO.png',
                height: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'BMI Calculator',
                style: mainHeading(),
              ),
            ])),
            Container(
              child: CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: FaIcon(
                  Icons.person,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          'assets/images/boy.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Name',
                                            style: Labels(),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ]),
                                        child: TextField(
                                          controller: nameField,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                              hintText: 'Eg: John',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15),
                                              fillColor: Colors.white,
                                              filled: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Age',
                                            style: Labels(),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ]),
                                        child: TextField(
                                          controller: ageField,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              hintText: 'Eg: 22',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15),
                                              fillColor: Colors.white,
                                              filled: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Height',
                                            style: Labels(),
                                          ),
                                          Text(
                                            'feet',
                                            style: smallLabel(),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ]),
                                        child: TextField(
                                          controller: heightField,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              hintText: 'Eg: 5.8',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15),
                                              fillColor: Colors.white,
                                              filled: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Weight',
                                            style: Labels(),
                                          ),
                                          Text(
                                            'kgs',
                                            style: smallLabel(),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          )
                                        ]),
                                        child: TextField(
                                          controller: weightField,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              hintText: 'Eg: 64',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15),
                                              fillColor: Colors.white,
                                              filled: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                    // color: Colors.blue,
                    child: Column(
              children: [
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [themeColor1, themeColor2]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        var name = nameField.text.toString();
                        var age = int.parse(ageField.text.toString());
                        var height = double.parse(heightField.text.toString());
                        var weight = int.parse(weightField.text.toString());

                        var inch = height * 12;
                        var cm = inch * 2.54;
                        var meter = cm / 100;
                        var m2 = meter * meter;

                        result = weight / m2;
                        //
                        // print('name: $name , age: $age , height: $height , weight: $weight ');

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Calculation(
                                    nameField.text.toString(),
                                    ageField.text.toString(),
                                    heightField.text.toString(),
                                    weightField.text.toString(),
                                    result)));
                      });
                    },
                    child: Text(
                      'Calculate',
                      style: Button(),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                  ),
                )
              ],
            )))
          ],
        ),
      ),
    );
  }
}

class grid extends StatelessWidget {
  @override
  var arrColors = [
    Colors.blue.shade900,
    Colors.blue.shade800,
    Colors.blue.shade700,
    Colors.blue.shade600,
    Colors.blue.shade500,
    Colors.blue.shade400
  ];

  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          color: arrColors[index],
        );
      },
      itemCount: arrColors.length,
    );
  }
}
