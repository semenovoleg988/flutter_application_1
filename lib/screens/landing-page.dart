import 'package:flutter_application_1/data/tasks-data.dart';
import 'package:flutter_application_1/screens/unit-page.dart';
import 'package:flutter_application_1/screens/auth-page.dart';
import 'package:flutter_application_1/screens/subtopics-page.dart';
import 'package:flutter_application_1/screens/topics-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/units-page.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'package:flutter_application_1/data/topics-data.dart';
import 'package:flutter_application_1/data/units-data.dart';

class LandingPage {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final units = Units();
    final topics = Topics().topics;
    final tasks = Tasks();
    //final args = settings.arguments;
    print(settings.name);
    List path = settings.name.split('/');
    /*return MaterialPageRoute(
        builder: (_) => BlankUnit(Units().getUnit(
              1,
              'Позиційні системи числення',
              0,
            )));*/
    switch (settings.name) {
      case '/':
        if (AuthService().currentUser == null) {
          return MaterialPageRoute(builder: (_) => AuthorisationPage());
        }
        return MaterialPageRoute(
          builder: (_) => TopicsListPage(topics[0]),
        );
      case '/auth':
        return MaterialPageRoute(builder: (_) => AuthorisationPage());
      case '/0':
        return MaterialPageRoute(
          builder: (_) => TopicsListPage(topics[0]),
        );
      default:
        if (path.length > 1 &&
            0 < int.parse(path[1]) &&
            int.parse(path[1]) <= 5) {
          if (path.length > 2 &&
              units.getUnits(int.parse(path[1]) - 1, path[2]) != null) {
            if (path.length == 4) {
              return MaterialPageRoute(
                builder: (_) => UnitPage(
                    units.getUnit(
                        int.parse(path[1]) - 1, path[2], int.parse(path[3])),
                    tasks),
              );
            } else {
              return MaterialPageRoute(
                builder: (_) => UnitListPage(
                  int.parse(path[1]),
                  path[2],
                  Units().getUnits(int.parse(path[1]) - 1, path[2]),
                ),
              );
            }
          } else {
            return MaterialPageRoute(
              builder: (_) => SubTopicsListPage(
                int.parse(path[1]),
                Topics().getTopic(
                  int.parse(path[1]),
                ),
              ),
            );
          }
        } else
          print(settings.name);
        return MaterialPageRoute(
          builder: (_) => TopicsListPage(Topics().getTopic(0)),
        );
    }
  }
}
