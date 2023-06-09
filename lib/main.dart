import 'package:flutter/material.dart';
import 'package:rick_and_morty/bloc_observable.dart';
import 'package:rick_and_morty/ui/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(
      () => runApp(const MyApp()),
    blocObserver: CharacterBlocObservable(),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(
          fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          headline3: TextStyle(
          fontSize: 24.0, color: Colors.white),
          bodyText2: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
          bodyText1: TextStyle(
            fontSize: 11.0, fontWeight: FontWeight.w100, color: Colors.grey),
        ),
      ),
      home: HomePage(title: 'Rick and Morty'),
    );
  }
}
