import 'package:flutter/material.dart';
import 'package:spacex_ui_flutter/pages/DevicesView.dart';
import 'package:spacex_ui_flutter/pages/ExploreView.dart';
import 'package:spacex_ui_flutter/pages/TaskView.dart';

class ToolsView extends StatelessWidget {
  const ToolsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                text: 'EXPLORE',
              ),
              Tab(
                text: 'TASKS',
              ),
              Tab(
                text: 'DEVICES',
              ),
            ]),
            Expanded(
              child: TabBarView(
                children: [
                  ExploreView(),
                  TasksView(),
                  DevicesView(),
                ],
              ),
            )
          ],
        ));
  }
}
