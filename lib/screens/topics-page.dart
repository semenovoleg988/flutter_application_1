import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/topics-list.dart';
import 'package:flutter_application_1/services/auth.dart';

class TopicsListPage extends StatelessWidget {
  final List topics;

  TopicsListPage(this.topics);

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
                AuthService().logOut();
                Navigator.of(context).pushNamed('/auth');
              },
              icon: Icon(Icons.exit_to_app),
              label: SizedBox.shrink(),
            )
          ],
        ),
        body: TopicsList(
          topicNumber: 0,
          topics: topics,
        ),
      ),
    );
  }
}
