import 'package:bazzar/core.dart';

class KVTextFormField extends StatelessWidget {
  const KVTextFormField({
    Key? key,
    required this.hintext,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);
  final String hintext;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: cWhite),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: cWhite),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: cWhite),
            ),
            hintText: hintext,
            hintStyle: Get.textTheme.subtitle1!.copyWith(
              color: cWhite,
            ),
            prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
            prefixIcon: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                prefixIcon,
                color: cGrey,
              ),
            ),
            suffixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
            suffixIcon: Icon(
              suffixIcon,
              color: cGrey,
            ),
          ),
        ),
        VerticalSpacing(),
      ],
    );
  }
}
