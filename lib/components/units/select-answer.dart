import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/task.dart';

class SelectAnswer extends StatelessWidget {
  //final TextEditingController _textController = TextEditingController();
  final SelectTask _task;

  SelectAnswer(this._task);

  @override
  Widget build(BuildContext context) {
    List<String> _possibleAnswers = _task.possibleAnswers;
    String task = _task.task;

    Widget _helpbutton(String text, void func()) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3),
        child: Container(
          child: Align(
            alignment: Alignment.center,
            child: Card(
              color: Theme.of(context).primaryColorLight,
              elevation: 5.0,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: TextButton(
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.headline6.color,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  func();
                },
              ),
            ),
          ),
        ),
      );
    }

    Widget _answerButton(func()) {
      return Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
              ),
              child: MaterialButton(
                child: Center(
                  child: Text(
                    "Відповісти",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.headline6.color,
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.headline4.fontSize,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      );
    }

    Widget _question() {
      return Container(
        child: Text(
          task,
          style: TextStyle(
            color: Theme.of(context).textTheme.headline6.color,
            fontWeight: FontWeight.bold,
            fontSize: Theme.of(context).textTheme.headline4.fontSize,
          ),
        ),
      );
    }

    Widget selectAnswer() {
      return Container(
        child: GridView.count(
          reverse: true,
          crossAxisCount: 2,
          childAspectRatio: 3.0,
          children: List.generate(
            _possibleAnswers.length,
            (index) {
              return Container(
                height: Theme.of(context).textTheme.headline6.fontSize,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    child: MaterialButton(
                      color: Theme.of(context).primaryColorLight,
                      elevation: 5.0,
                      child: Text(
                        _possibleAnswers[index],
                        style: TextStyle(
                          color: Theme.of(context).textTheme.headline6.color,
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.headline6.fontSize,
                        ),
                      ),
                      onPressed: () {
                        //Navigator.of(context)
                        //  .pushNamed('/$topicNumber/' + subtopicName + '/$index');
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Row(
            children: [
              _helpbutton('?', () {}),
              _helpbutton('!', () {}),
            ],
          ),
        ),
        Flexible(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: _question(),
                    ),
                  ),
                  Flexible(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: selectAnswer(),
                    ),
                  ),
                ],
              ),
            )),
        Flexible(flex: 1, child: _answerButton(() {})),
      ],
    );
  }
}
