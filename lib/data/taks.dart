class Tasks {
  Tasks({this.name, this.date});
  String name;
  DateTime date;
}

List<Tasks> myTasks = <Tasks>[
  Tasks(
    name: 'Atividade 1',
    date: DateTime.utc(2020, DateTime.august, 10),
  ),
  Tasks(
    name: 'Atividade 2',
    date: DateTime.utc(2020, DateTime.august, 13),
  ),
  Tasks(
    name: 'Atividade 3',
    date: DateTime.utc(2020, DateTime.august, 14),
  ),
];
