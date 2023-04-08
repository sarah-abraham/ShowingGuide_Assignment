// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

int index = 0;
List<String> prop_details = [
  'Apartment',
  '3 Bedrooms',
  '2 Bathrooms',
  '2 Garages'
];
List<IconData> prop_icons = [
  CupertinoIcons.building_2_fill,
  CupertinoIcons.bed_double,
  Icons.bathtub,
  CupertinoIcons.car
];

List<String> drop_details = [
  'Key Facts',
  'Property History',
  'Demographics',
  'Points of interest'
];
List<IconData> drop_icons = [
  Icons.key,
  CupertinoIcons.timer,
  CupertinoIcons.arrow_2_circlepath,
  CupertinoIcons.location_solid
];

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  var forAndroid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            height: 350,
            child: Carousel(
              boxFit: BoxFit.fill,
              images: [
                AssetImage('./assets/images/1.png'),
                AssetImage('./assets/images/1.png'),
                AssetImage('./assets/images/1.png'),
                AssetImage('./assets/images/1.png'),
              ],
              autoplay: false,
              dotColor: Colors.black,
              dotBgColor: Colors.white.withOpacity(0),
              moveIndicatorFromBottom: 475.0,
              dotSize: 5.0,
              dotSpacing: 20.0,
            ),
          ),
          Container(
              width: 700,
              height: 50,
              color: Color(0xFF5EB182).withOpacity(0.2),
              child: Center(
                  child: Text('For Sale',
                      style: TextStyle(
                          color: Color(0xFF5EB182),
                          fontWeight: FontWeight.bold,
                          fontSize: 15)))),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 25),
              Text(
                'MLS#: E5579076',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
          Row(
            children: [
              SizedBox(width: 25),
              Text(
                'Listed for: ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                '\$1,549,584',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 170),
              Container(
                width: 40,
                height: 40,
                child: Icon(
                  CupertinoIcons.shopping_cart,
                  size: 30,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(width: 25),
              Text(
                '2118 Thornridge Cir, Syracuse, Connecticut 35627',
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 25),
              Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2.0,
                        ),
                      ]),
                  child: Row(children: [
                    SizedBox(width: 20),
                    Center(child: Text('View on Map')),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      CupertinoIcons.map,
                      size: 20,
                      color: Colors.black,
                    ),
                  ])),
              SizedBox(width: 25),
              Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2.0,
                        ),
                      ]),
                  child: Row(children: [
                    SizedBox(width: 20),
                    Center(child: Text('Get Directions')),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      CupertinoIcons.arrow_up_right_diamond,
                      size: 20,
                      color: Colors.black,
                    ),
                  ])),
            ],
          ),
          SizedBox(height: 20),
          Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Row(children: [
                SizedBox(width: 30),
                Text('Notify similar properties like this',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(width: 50),
                Switch(
                  splashRadius: 50.0,
                  value: forAndroid,
                  onChanged: (value) => setState(() => forAndroid = value),
                ),
              ])),
          SizedBox(height: 20),
          Container(
              color: Colors.grey.withOpacity(0.2),
              height: 100,
              width: 500,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Text('Property Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                      //so we can scroll row in the horizontal direction
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (index = 0; index < 4; index++)
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 1),
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 15),
                                      Icon(prop_icons[index]),
                                      SizedBox(width: 15),
                                      Text(prop_details[index],
                                          style: TextStyle(fontSize: 15)),
                                    ],
                                  )),
                          ])),
                ],
              )),
          Column(
            children: [
              for (index = 0; index < 4; index++)
                ExpansionTile(
                  title: Row(children: [
                    Icon(drop_icons[index]),
                    SizedBox(width: 15),
                    Text(drop_details[index])
                  ]),
                  children: <Widget>[
                    ListTile(
                        title: Center(
                      child: Flexible(
                          child: Text(
                              'Buy/Sell History for 2118 Thornridge Cir, Syracuse, Connecticut 35627')),
                    )),
                    for (int i = 0; i < 3; i++)
                      ListTile(
                        title: Container(
                            height: 130,
                            width: 500,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    SizedBox(width: 15),
                                    Text('List: 08.05.2022'),
                                    SizedBox(width: 180),
                                    Container(
                                        margin: EdgeInsets.all(7),
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.green),
                                        child: Center(
                                            child: Text('SOLD',
                                                style: TextStyle(
                                                    color: Colors.white))))
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 15),
                                    Text('Listed For: '),
                                    Text('\$1,549,586',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 40),
                                    Text('Sold For: '),
                                    Text('\$1,549,586',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    SizedBox(width: 15),
                                    Text('MLS#: E5579076')
                                  ],
                                )
                              ],
                            )),
                      ),

                    // add more child widgets here as needed
                  ],
                )
            ],
          ),
          Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1.0,
                    ),
                  ]),
              child: Row(children: [
                SizedBox(width: 30),
                Text('My Notes',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(width: 180),
                Container(
                    margin: EdgeInsets.all(15),
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF2E63F6),
                    ),
                    child: Center(
                      child: Text('Add Note',
                          style: TextStyle(color: Colors.white)),
                    )),
              ])),
          SizedBox(height: 25),
          Container(
              height: 130,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text('Listing Agent',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text('Courtney Henry',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(width: 190),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Icon(CupertinoIcons.phone_arrow_up_right))
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'Business Monitor International',
                      )
                    ],
                  ),
                ],
              )),
          SizedBox(height: 20)
        ]),
      ),
    );
  }
}
