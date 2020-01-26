import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  final String text;

  const CommonTitle({
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.title,
    );
  }
}
