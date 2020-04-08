import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../controllers/calendar_bloc.dart';

class InformatinoSetter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InformatinoSetterState();
}

class _InformatinoSetterState extends State<InformatinoSetter> {
  int selectedIntensity;

  @override
  void initState() {
    selectedIntensity = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;
    final df = DateFormat('dd.MM.yyyy');
    final theme = Theme.of(context);
    final textStyle = TextStyle(color: Colors.white, fontSize: 24);
    return Container(
      height: size.height * .3,
      width: size.width * .95,
      margin: EdgeInsets.symmetric(
        horizontal: size.width * .025,
        vertical: size.height * .025,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * .025,
        vertical: size.height * .025,
      ),
      decoration: BoxDecoration(
        color: Colors.pink[400],
        borderRadius: BorderRadius.all(
          Radius.circular(size.width * 0.05),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Title
            StreamBuilder(
              stream: bloc.selectedDate,
              builder: (context, AsyncSnapshot<DateTime> cDate) {
                final title = !cDate.hasData
                    ? Text("")
                    : Text(
                        df.format(cDate.data),
                        style: theme.textTheme.headline4
                            .copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      );
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [title],
                );
              },
            ),
            // Intensity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Intensität",
                  style: textStyle,
                ),
                DropdownButton<int>(
                  value: selectedIntensity,
                  icon: Icon(Icons.arrow_downward),
                  dropdownColor: Colors.pink,
                  isExpanded: false,
                  elevation: 16,
                  iconSize: 24,
                  iconEnabledColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  hint: Text("Intensität"),
                  underline: Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                      .map((e) => DropdownMenuItem(child: Text('$e'), value: e))
                      .toList(),
                  onChanged: (i) => this.setState(() {
                    selectedIntensity = i;
                  }),
                ),
              ],
            ),
            // Blutmenge
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Blutmenge", style: textStyle),
                DropdownButton<int>(
                  value: selectedIntensity,
                  icon: Icon(Icons.arrow_downward),
                  dropdownColor: Colors.pink,
                  isExpanded: false,
                  elevation: 16,
                  iconSize: 24,
                  iconEnabledColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  hint: Text("Intensität"),
                  underline: Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                      .map((e) => DropdownMenuItem(child: Text('$e'), value: e))
                      .toList(),
                  onChanged: (i) => this.setState(() {
                    selectedIntensity = i;
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
