import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class _CalendarBloc {
  final _selectedDate = BehaviorSubject<DateTime>();

  ValueStream<DateTime> get selectedDate => _selectedDate.stream;

  Function(DateTime) get setSelecedDate => _selectedDate.add;

  void dispose() {
    _selectedDate.close();
  }
}

class Provider extends InheritedWidget {
  final bloc = _CalendarBloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static _CalendarBloc of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
}
