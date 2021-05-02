import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/units-list.dart';

class UnitListPage extends StatelessWidget {
  final int topicNumber;
  final List units;
  final String subtopic;

  UnitListPage(this.topicNumber, this.subtopic, this.units);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
        body: UnitsList(
          topicNumber: topicNumber,
          subtopicName: subtopic,
          units: units,
        ),
      ),
    );
  }
}
