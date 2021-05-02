import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/units/select-answer.dart';
import 'package:flutter_application_1/components/units/type-answer.dart';
import 'package:flutter_application_1/data/tasks-data.dart';
//import 'package:flutter_application_1/domain/task.dart';
import 'package:flutter_application_1/domain/unit.dart';

class UnitPage extends StatelessWidget {
  final Unit unit;
  final Tasks tasks;
  UnitPage(this.unit, this.tasks);
  @override
  Widget build(BuildContext context) {
    print("Hello");
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("Математика навколо нас"),
        leading: Icon(Icons.menu_book_rounded),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.west_rounded),
            label: SizedBox.shrink(),
          )
        ],
      ),
      body: unit.getType() == 'TypeTask'
          ? TypeAnswer(tasks.getTask(unit.name))
          : unit.getType() == 'SelectAnswer'
              ? SelectAnswer(tasks.getTask(unit.name))
              : Container(),
    );
  }
}
