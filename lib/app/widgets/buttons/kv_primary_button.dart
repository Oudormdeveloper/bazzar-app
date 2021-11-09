import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';

class KVPrimaryButton extends StatelessWidget {
  const KVPrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fillColor = cPrimary,
    this.textColor = cWhite,
  }) : super(key: key);
  final String text;
  final Function onPressed;
  final Color fillColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        color: fillColor,
        child: Text(
          text,
          style: kButtonText().copyWith(
            color: textColor,
          ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
