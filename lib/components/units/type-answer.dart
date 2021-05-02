import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/task.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class TypeAnswer extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  final TypeTask task;
  TypeAnswer(this.task);

  @override
  Widget build(BuildContext context) {
    String _task = task.task;
    //String _answer = task.answer;

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
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          child: Text(
            _task,
            style: TextStyle(
              color: Theme.of(context).textTheme.headline6.color,
              fontWeight: FontWeight.bold,
              fontSize: Theme.of(context).textTheme.headline4.fontSize,
            ),
          ),
        ),
      );
    }

    Widget _typeAnswer() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          controller: _textController,
          obscureText: false,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white30),
            hintText: "Відповідь",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white54,
                width: 1,
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Icon(Icons.last_page_rounded),
              ),
            ),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 10),
                child: _question(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 10),
                child: _typeAnswer(),
              ),
            ],
          ),
        ),
        Flexible(flex: 1, child: _answerButton(() {})),
      ],
    );
  }
}

/**/
