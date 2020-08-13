import 'package:flutter/cupertino.dart';
import 'package:bino_todo/data/taks.dart';

DateTime getCurrentDay() {
  var fullToday = DateTime.now();
  var today = DateTime.utc(fullToday.year, fullToday.month, fullToday.day);

  return today;
}

List<Widget> getTasks(DateTime today, Function test) {
  List<Widget> list = <Widget>[];
  for (int i = 0; i < myTasks.length; i++) {
    var taskDate = myTasks[i].date;
    if (test(taskDate) == true) {
      list.add(Text(myTasks[i].name));
    }
  }
  return list;
}

Column todayTasks() {
  var today = getCurrentDay();
  return Column(
    children: getTasks(today, today.isAtSameMomentAs),
  );
}

Column nextTasks() {
  var today = getCurrentDay();
  return Column(
    children: getTasks(today, today.isBefore),
  );
}

Column yesterDayTasks() {
  var today = getCurrentDay();
  return Column(
    children: getTasks(today, today.isAfter),
  );
}
