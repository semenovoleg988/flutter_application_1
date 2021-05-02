import 'package:flutter/material.dart';

class UnitsList extends StatelessWidget {
  final units;

  final int topicNumber;
  final String subtopicName;

  UnitsList({this.topicNumber, this.subtopicName, this.units});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 5,
        children: List.generate(
          units.length,
          (index) {
            return GestureDetector(
              child: Card(
                elevation: 15.0,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(50, 65, 85, 0.85),
                  ),
                  child: Center(
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline6.color,
                        fontWeight: FontWeight.bold,
                        fontSize:
                            Theme.of(context).textTheme.headline6.fontSize,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushNamed('/$topicNumber/' + subtopicName + '/$index');
              },
            );
          },
        ),
      ),
    );
  }
}
