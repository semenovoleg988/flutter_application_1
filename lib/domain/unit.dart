class Unit {
  final String name;
  final String type;
  bool done = false;

  Unit({this.name, this.type});

  String getName() => name;
  String getType() => type;
  bool isDone() => done;
}
