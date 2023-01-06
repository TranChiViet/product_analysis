import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

class TopicText extends StatelessWidget {
  final String title;
  // final String subtile;
  final List<String> texts;
  final List<Widget> children;
  TopicText({
    required this.title,
    // required this.subtile,
    required this.texts,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(TopicListItem(text));
      // widgetList.add(TopicListWidget(child));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }
    for (var child in children) {
      // Add list item
      // widgetList.add(TopicListItem(text));
      widgetList.add(TopicListWidget(child));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }
    return ExpansionTile(
      title: Text(title),
      // subtitle: Text(subtile),
      children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: widgetList,
            ),
          ),
        )
      ],
    );
  }
}

class TopicListItem extends StatelessWidget {
  final String text;
  TopicListItem(this.text);

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

class TopicListWidget extends StatelessWidget {
  final Widget wg;
  TopicListWidget(this.wg);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: wg,
        ),
      ],
    );
  }
}
