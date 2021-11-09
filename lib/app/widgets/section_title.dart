import 'package:bazzar/core.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kvDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: h6TextStyle().copyWith(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              'view all',
              style: kBody2Text().copyWith(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
