import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonForTest extends StatefulWidget {
  final Function click;
  final Color cor;
  final Color disableColor;
  final String label;
  final bool value;
  const ButtonForTest(
      {Key? key,
      required this.click,
      required this.cor,
      required this.label,
      required this.value,
      required this.disableColor})
      : super(key: key);

  @override
  State<ButtonForTest> createState() => _ButtonForTestState();
}

class _ButtonForTestState extends State<ButtonForTest> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: Key('findElevatedButton'),
      onPressed: widget.click(),
      child: Text(widget.label),
      style: ButtonStyle(
          backgroundColor: widget.value == true
              ? MaterialStateProperty.all(widget.cor)
              : MaterialStateProperty.all(widget.disableColor)),
    );
  }
}
