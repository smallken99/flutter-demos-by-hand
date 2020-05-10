import 'package:flutter/material.dart';
import 'screens/note_detail.dart';
import 'screens/note_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'NoteKeeper',
          theme: ThemeData(primarySwatch: Colors.deepPurple),
          home: NoteDetail()),
    );
  }
}
