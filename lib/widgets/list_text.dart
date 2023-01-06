import 'package:flutter/material.dart';

class ListText extends StatelessWidget {
  ListText(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      widgetList.add(ListItem(text));
      widgetList.add(SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class ListItem extends StatelessWidget {
  final String text;
  ListItem(this.text);
  

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}