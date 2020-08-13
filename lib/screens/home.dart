import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bino_todo/functions/date.dart';
import 'package:bino_todo/data/taks.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bino\'s ToDo'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {
          setState(() {
            myTasks.add(
              Tasks(
                name: 'Tarefa adicionada',
                date: getCurrentDay(),
              ),
            );
          });
        },
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Text('Para ontem'),
              yesterDayTasks(),
              Text('Para hoje'),
              todayTasks(),
              Text('Próximos'),
              nextTasks(),
            ],
          ),
        ),
      ),
    );
  }
}
