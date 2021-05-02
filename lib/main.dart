import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'package:provider/provider.dart';

import 'screens/landing-page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MathApp());
}

class MathApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserId>.value(
      value: AuthService().currentUser,
      initialData: null,
      child: MaterialApp(
        title: 'MATH ARROUND AS',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(50, 65, 85, 1),
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.white),
          ),
        ),
        initialRoute: '/',
        onGenerateRoute: LandingPage.generateRoute,
      ),
    );
  }
}
