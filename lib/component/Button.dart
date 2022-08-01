import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonForTest extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: Key('findElevatedButton'),
      onPressed: click(),
      child: Text(label),
      style: ButtonStyle(
          backgroundColor: value
              ? MaterialStateProperty.all(cor)
              : MaterialStateProperty.all(disableColor)),
    );
  }
}
