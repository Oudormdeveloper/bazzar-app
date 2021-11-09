export 'constant_export.dart';

import 'package:bazzar/core.dart';

const double kvDefaultPadding = 15.0;
const double kvBorderRadius = 8.0;

class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    Key? key,
    this.of = kvDefaultPadding,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: of,
    );
  }
}

// For add free space horizontally
class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing({
    Key? key,
    this.of = kvDefaultPadding,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: of,
    );
  }
}
