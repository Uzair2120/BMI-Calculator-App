import 'package:flutter/material.dart';
import 'package:new_one/UI/theme.dart';

class Calculation extends StatefulWidget {
  var name;
  var age;
  var height;
  var weight;
  var result;

  Calculation(this.name, this.age, this.weight, this.height, this.result);

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  Widget? conText() {
    if (widget.result <= 18.4) {
      return Text(
        'UnderWeight',
        style: TextStyle(
            color: Colors.orange,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold),
      );
    } else if (widget.result > 18.4 && widget.result <= 24.9) {
      return Text(
        'Normal',
        style: TextStyle(
            color: Colors.green,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold),
      );
    } else if (widget.result > 24.9 && widget.result <= 39.9) {
      return Text(
        'OverWeight',
        style: TextStyle(
            color: Colors.amber,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold),
      );
    } else if (widget.result > 39.9) {
      return Text(
        'Obese',
        style: TextStyle(
            color: Colors.red,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold),
      );
    }
  }

  static const themeColor2 = Color(0xFF31A1E4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result',
          style: mainHeading(),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        // color: Colors.amber,
        child: Column(

          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 250,
                // color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BMI Score',
                      style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    if (widget.result <= 18.4) ...[
                      Text(
                        widget.result.toStringAsFixed(1),
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                    if (widget.result > 18.4 && widget.result <= 24.9) ...[
                      Text(
                        widget.result.toStringAsFixed(1),
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                    if (widget.result > 24.9 && widget.result <= 39.9) ...[
                      Text(
                        widget.result.toStringAsFixed(1),
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                    if (widget.result > 39.9) ...[
                      Text(
                        widget.result.toStringAsFixed(1),
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                    SizedBox(
                      child: conText(),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 120,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                    color: themeColor2,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.name,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black38,
                            thickness: 1,
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                    color: themeColor2,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.age,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black38,
                            thickness: 1,
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Height',
                                style: TextStyle(
                                    color: themeColor2,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.height,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black38,
                            thickness: 1,
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(
                                    color: themeColor2,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.weight,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                child: Column(
                  children: [
                    if(widget.result <= 18.4)...[
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        height:130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.orange,
                                width: 2
                            ),
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.orange.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                // offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bad Health!', style: TextStyle(color: Colors.orange , fontFamily: 'Poppins', fontSize: 15 , fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt', style: TextStyle(color: Colors.orange , fontFamily: 'Poppins', fontSize: 14 ),)
                          ],
                        ),
                      ),
                    ],
                    if(widget.result > 18.4 && widget.result <= 24.9)...[
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        height:130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green,
                                width: 2
                            ),
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.green.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                // offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Good Health!', style: TextStyle(color: Colors.green , fontFamily: 'Poppins', fontSize: 15 , fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt', style: TextStyle(color: Colors.green , fontFamily: 'Poppins', fontSize: 14 ),)
                          ],
                        ),
                      ),
                    ],
                    if(widget.result > 24.9 && widget.result <= 39.9)...[
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        height:130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.amber,
                                width: 2
                            ),
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.amber.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                // offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('You are Fat!', style: TextStyle(color: Colors.amber , fontFamily: 'Poppins', fontSize: 15 , fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt', style: TextStyle(color: Colors.amber , fontFamily: 'Poppins', fontSize: 14 ),)
                          ],
                        ),
                      ),
                    ],
                    if(widget.result > 39.9)...[
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        height:130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.red,
                                width: 2
                            ),
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                // offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('You Need Help!', style: TextStyle(color: Colors.red , fontFamily: 'Poppins', fontSize: 15 , fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt', style: TextStyle(color: Colors.red , fontFamily: 'Poppins', fontSize: 14 ),)
                          ],
                        ),
                      ),
                    ],

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
