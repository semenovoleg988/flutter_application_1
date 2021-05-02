import 'package:flutter/material.dart';

class TopicsList extends StatelessWidget {
  final topics;

  final int topicNumber;

  TopicsList({this.topicNumber, this.topics});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(50, 65, 85, 0.85),
              ),
              child: GestureDetector(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.menu_book_rounded,
                      color: Theme.of(context).textTheme.headline6.color,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1, color: Colors.white24),
                      ),
                    ),
                  ),
                  title: Text(
                    topics[index].title,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.headline6.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Theme.of(context).textTheme.headline6.color,
                  ),
                ),
                onTap: () {
                  if (topicNumber == 0)
                    Navigator.of(context).pushNamed('/${index + 1}/');
                  else
                    Navigator.of(context)
                        .pushNamed('/$topicNumber/' + topics[index].title);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
