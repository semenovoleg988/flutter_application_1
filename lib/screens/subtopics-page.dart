import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/topics-list.dart';

class SubTopicsListPage extends StatelessWidget {
  final int _topicNumber;
  final List topics;

  SubTopicsListPage(this._topicNumber, this.topics);

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
        body: TopicsList(
          topicNumber: _topicNumber,
          topics: topics,
        ),
      ),
    );
  }
}
