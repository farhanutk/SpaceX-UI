import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';
import 'package:spacex_ui_flutter/pages/Crew_Model.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);
  Map<String, double> dataMap = {
    "Power": 4,
    "Thrusters": 1,
    "Oxygen": 2,
    "Integrity": 3,
  };
  final _nameController = TextEditingController();
  final _positionController = TextEditingController();
  CarouselController carouselControllerButton = CarouselController();

  final CrewTable _data = CrewTable();

  @override
  Widget build(BuildContext context) {
    print('built scaffold');
    return Scaffold(
      appBar: AppBar(
        title: Text('DASHBOARD'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ONGOING TASKS',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.task,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Stack(children: [
                      CarouselSlider(
                        items: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 110,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'PLANTINGS',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                        ),
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(1),
                                            height: 3,
                                            width: 300,
                                            color: Colors.grey,
                                          ),
                                          Container(
                                            width: 240,
                                            height: 3,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'plants 800 / 1000',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            '80%',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 110,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'MANUFACTURING',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.info_outline,
                                          color: Colors.grey,
                                        ),
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(1),
                                            height: 3,
                                            width: 300,
                                            color: Colors.grey,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 3,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'solar panels 100 / 300',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            '30%',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                        carouselController: carouselControllerButton,
                        options: CarouselOptions(
                          height: 110.0,
                          autoPlay: true,
                          initialPage: 0,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                        ),
                      ),
                      Container(
                        height: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromRGBO(255, 255, 255, 0.2),
                              radius: 15,
                              child: IconButton(
                                  color: Colors.white,
                                  splashRadius: 20,
                                  iconSize: 30,
                                  padding: EdgeInsets.all(1),
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    carouselControllerButton.previousPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.linear);
                                  },
                                  icon: Icon(Icons.arrow_left)),
                            ),
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromRGBO(255, 255, 255, 0.2),
                              radius: 15,
                              child: IconButton(
                                  color: Colors.white,
                                  splashRadius: 20,
                                  iconSize: 30,
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    carouselControllerButton.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.linear);
                                  },
                                  icon: Icon(Icons.arrow_right)),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('RESOURCES',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.wifi,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 170,
                          width: 170,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.wifi_calling,
                                color: Colors.green,
                                size: 40,
                              ),
                              Text(
                                'Communication',
                                style: TextStyle(color: Colors.grey[400]),
                                textAlign: TextAlign.center,
                              ),
                              LinearPercentIndicator(
                                width: 130.0,
                                lineHeight: 18.0,
                                percent: 0.8,
                                backgroundColor: Colors.grey[700],
                                progressColor: Colors.green,
                                barRadius: Radius.circular(10),
                                center: Text('80%'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 170,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.air,
                                color: Colors.orange,
                                size: 40,
                              ),
                              Text(
                                'Oxygen',
                                style: TextStyle(color: Colors.grey[400]),
                                textAlign: TextAlign.center,
                              ),
                              LinearPercentIndicator(
                                width: 130.0,
                                lineHeight: 18.0,
                                percent: 0.3,
                                backgroundColor: Colors.grey[700],
                                progressColor: Colors.orange,
                                barRadius: Radius.circular(10),
                                center: Text('30%'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    border: Border.all(width: 2.5, color: Colors.teal),
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '🟢 STARSHIP STATUS',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    PieChart(
                      dataMap: dataMap,
                      // chartType: ChartType.ring,
                    )
                  ],
                ),
              ),

              // working

              ChangeNotifierProvider(
                create: (BuildContext context) {
                  print('built notifier');
                  return CrewModel();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.5, color: Colors.teal),
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '🛠 CREW INFO',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      // fix calling database infinitely!!! [FIXED]
                      Consumer<CrewModel>(
                        builder: (context, crewModel, child) {
                          print('notified');
                          // crewModel.fetchCrew();

                          // final data =
                          //     Provider.of<CrewModel>(context, listen: false);
                          // if (data.crewList.isEmpty) {
                          //   data.fetchCrew();
                          // }

                          if (crewModel.crewList.isEmpty) {
                            crewModel.fetchCrew();
                          }
                          return Column(
                            children: [
                              //old table
                              // SingleChildScrollView(
                              //   scrollDirection: Axis.horizontal,
                              //   child: DataTable(
                              //       columns: [
                              //         DataColumn(
                              //           label: Text('ID'),
                              //         ),
                              //         DataColumn(
                              //           label: Text('NAME'),
                              //         ),
                              //         DataColumn(
                              //           label: Text('POSITION'),
                              //         ),
                              //         DataColumn(
                              //           label: Text('ID'),
                              //         ),
                              //         DataColumn(
                              //           label: Text('NAME'),
                              //         ),
                              //         DataColumn(
                              //           label: Text('POSITION'),
                              //         ),
                              //       ],
                              //       rows: crewModel.crewList
                              //           .map((e) => DataRow(
                              //                 cells: [
                              //                   DataCell(
                              //                       Text(e['id'].toString())),
                              //                   DataCell(Text(e['name'])),
                              //                   DataCell(Text(e['position'])),
                              //                   DataCell(
                              //                       Text(e['id'].toString())),
                              //                   DataCell(Text(e['name'])),
                              //                   DataCell(Text(e['position'])),
                              //                 ],
                              //               ))
                              //           .toList()),
                              // ),

                              // new paginated table. working.
                              SizedBox(
                                width: 500,
                                child: PaginatedDataTable(
                                    rowsPerPage: 5,
                                    columns: [
                                      DataColumn(
                                        label: Text('ID'),
                                      ),
                                      DataColumn(
                                        label: Text('NAME'),
                                      ),
                                      DataColumn(
                                        label: Text('POSITION'),
                                      ),
                                    ],
                                    source: _data),
                              ),

                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.teal),
                                      onPressed: () {
                                        // crewModel.addToCrew('Farhan', 'Dev');
                                        // crewModel.fetchCrew();
                                        showModalBottomSheet(
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: Container(
                                                  height: 300,
                                                  padding: EdgeInsets.all(30),
                                                  color: Colors.grey[900],
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        'Add crew member',
                                                        style: TextStyle(
                                                            fontSize: 24),
                                                      ),
                                                      SizedBox(height: 15),
                                                      TextFormField(
                                                        controller:
                                                            _nameController,
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    'Name'),
                                                      ),
                                                      TextFormField(
                                                        controller:
                                                            _positionController,
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    'Position'),
                                                      ),
                                                      SizedBox(height: 15),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          crewModel
                                                              .addToCrew(
                                                                  _nameController
                                                                      .text,
                                                                  _positionController
                                                                      .text)
                                                              .then((value) {
                                                            if (value == 0) {
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return AlertDialog(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .grey[900],
                                                                      title: Text(
                                                                          'Error'),
                                                                      content: Text(
                                                                          'Oops! Some error occured.'),
                                                                      actions: [
                                                                        ElevatedButton(
                                                                            style:
                                                                                ElevatedButton.styleFrom(primary: Colors.teal),
                                                                            onPressed: () {
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                            child: Text('Try again'))
                                                                      ],
                                                                    );
                                                                  });
                                                            } else {
                                                              // crewModel
                                                              //     .fetchCrew();
                                                              _data.fetch();
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return AlertDialog(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .grey[900],
                                                                      content:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Image
                                                                              .asset(
                                                                            'images/SpaceX_Logo_White.png',
                                                                            height:
                                                                                100,
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                5,
                                                                          ),
                                                                          Text(
                                                                              'Crew member was added to SpaceX!'),
                                                                        ],
                                                                      ),
                                                                      actions: [
                                                                        ElevatedButton(
                                                                            style:
                                                                                ElevatedButton.styleFrom(primary: Colors.teal),
                                                                            onPressed: () {
                                                                              FocusScope.of(context).unfocus();
                                                                              _nameController.clear();
                                                                              _positionController.clear();
                                                                              Navigator.of(context).pop();
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                            child: Text('Close'))
                                                                      ],
                                                                    );
                                                                  });
                                                            }
                                                          });
                                                        },
                                                        child: Text('Save'),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          minimumSize:
                                                              Size.fromHeight(
                                                                  40),
                                                          primary: Colors.teal,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      child: Text('Add crew member')),
                                  TextButton.icon(
                                      style: TextButton.styleFrom(
                                          primary: Colors.teal),
                                      label: Text('Refresh'),
                                      onPressed: () {
                                        // crewModel.fetchCrew();
                                        _data.fetch();
                                      },
                                      icon: Icon(Icons.refresh))
                                ],
                              )
                            ],
                          );
                        },
                      ),

                      // working

                      // Consumer<CrewModel>(builder: ((context, value, child) {
                      // return Text(value.id.toString());
                      // }))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
