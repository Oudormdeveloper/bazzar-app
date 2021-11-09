import 'package:bazzar/core.dart';

class KVPanel extends StatelessWidget {
  const KVPanel({
    Key? key,
    this.padding,
    required this.child,
    this.color = cWhite,
  }) : super(key: key);
  final EdgeInsets? padding;
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
      ),
      child: child,
    );
  }
}
