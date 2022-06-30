import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:spacex_ui_flutter/main.dart';

class DevicesView extends StatelessWidget {
  const DevicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: 300,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1592860475958-6d6dd04b34b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHRlbGVzY29wZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'))),
              ),
              Container(
                height: 120,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 160,
                          child: Text(
                            'The Keck Telescope is Available Online',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.video_call),
                          label: Text('Live'),
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 10),
                              primary: Colors.white,
                              backgroundColor:
                                  Color.fromRGBO(255, 255, 255, 0.1)),
                        )
                      ],
                    ),
                    Text(
                      'Mauna Kea Observatories',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('MY LAB',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.science,
                      color: Colors.grey,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 110,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.calculate,
                        color: Colors.grey[700],
                        size: 40,
                      ),
                      Text(
                        'Calculation',
                        style: TextStyle(color: Colors.grey[400]),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 110,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.graphic_eq,
                        color: Colors.grey[700],
                        size: 40,
                      ),
                      Text(
                        'Graphing',
                        style: TextStyle(color: Colors.grey[400]),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 110,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.data_array,
                        color: Colors.grey[700],
                        size: 40,
                      ),
                      Text(
                        'Sheets',
                        style: TextStyle(color: Colors.grey[400]),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1551871812-10ecc21ffa2f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3BhY2VzaGlwfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'))),
                ),
                Container(
                  height: 170,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'VEHICLE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              'STARSHIP SN33',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                              ),
                            ),
                          )
                        ],
                      ),
                      CircularPercentIndicator(
                        radius: 50,
                        lineWidth: 5.0,
                        percent: 0.8,
                        center: Text(
                          "80%",
                          style: TextStyle(fontSize: 24),
                        ),
                        progressColor: Colors.green,
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0.4),
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1639782792143-d8ce97e5d330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hcnMlMjByb3ZlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'))),
                ),
                Container(
                  height: 170,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ROVER',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              'CRAWLER RV12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                              ),
                            ),
                          )
                        ],
                      ),
                      CircularPercentIndicator(
                        radius: 50,
                        lineWidth: 5.0,
                        percent: 0.4,
                        center: Text(
                          "40%",
                          style: TextStyle(fontSize: 24),
                        ),
                        progressColor: Colors.amber,
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0.4),
                      )
                    ],
                  ),
                )
              ],
            )
          ]))
        ],
      ),
    );
  }
}
