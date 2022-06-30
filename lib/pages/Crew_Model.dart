import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:spacex_ui_flutter/logic/db_functions.dart';

class CrewModel extends ChangeNotifier {
  // int id = 22;
  // String name = 'George';
  // String position = 'Captain';

  List crewList = [];
  // List crewList = [
  //   {'id': 1, 'name': 'George', 'position': 'Dev'},
  //   {'id': 2, 'name': 'Smith', 'position': 'Tech'},
  //   {'id': 3, 'name': 'Leyla', 'position': 'Captain'},
  // ];

  // CrewModel({required this.id, required this.name, required this.position});

  // addCrew(int id, String name, String position) {
  //   this.id = id;
  //   this.name = name;
  //   this.position = position;
  //   notifyListeners();
  // }

  Future<List<dynamic>> fetchCrew() async {
    crewList = await getCrew();
    if (crewList.isEmpty) {
      crewList.add({'id': '***', 'name': '***', 'position': '***'});
    }
    notifyListeners();
    return crewList; //for class?
  }

  Future<int> addToCrew(String name, String position) async {
    // List onlineCrewList = await getCrew();
    // crewList.add({'id': id, 'name': name, 'position': position});
    int result = await putCrew(name, position);
    return result;
  }
}

class CrewTable extends DataTableSource {
  CrewModel crewModel = CrewModel();
  // List data = [
  //   {'id': 1, 'name': 'George', 'position': 'Dev'},
  //   {'id': 2, 'name': 'Smith', 'position': 'Tech'},
  //   {'id': 3, 'name': 'Leyla', 'position': 'Captain'},
  //   {'id': 1, 'name': 'George', 'position': 'Dev'},
  //   {'id': 2, 'name': 'Smith', 'position': 'Tech'},
  //   {'id': 3, 'name': 'Leyla', 'position': 'Captain'},
  //   {'id': 1, 'name': 'George', 'position': 'Dev'},
  //   {'id': 2, 'name': 'Smith', 'position': 'Tech'},
  //   {'id': 3, 'name': 'Leyla', 'position': 'Captain'},
  // ];

  List crewList = [];
  int length = 0;

  fetch() async {
    crewList = await crewModel.fetchCrew();
    // print(crewList);
    // print('fetched');
    // print(crewList.length);
    length = crewModel.crewList.length;
    notifyListeners();
    // print(length);
  }

  CrewTable() {
    fetch();
    // print(crewList);
    // print('constructor created');
  }

  @override
  DataRow? getRow(int index) {
    // if (data.isEmpty) {
    //   data.add({'id': 3, 'name': 'Leyla', 'position': 'Captain'});
    // }
    return DataRow(
      cells: [
        // DataCell(Text(data[index]['id'].toString())),
        // DataCell(Text(data[index]['name'])),
        // DataCell(Text(data[index]['position'])),
        // DataCell(Text(data[index]['id'].toString())),
        // DataCell(Text(data[index]['name'])),
        // DataCell(Text(data[index]['position'])),
        DataCell(Text(crewList[index]['id'].toString())),
        DataCell(Text(crewList[index]['name'])),
        DataCell(Text(crewList[index]['position'])),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount {
    // int fetchCount = fetch as int;
    // print(length);

    return length;
  }

  @override
  int get selectedRowCount => 0;
}
