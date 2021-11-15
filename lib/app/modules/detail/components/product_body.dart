import 'package:bazzar/core.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectColorSection(),
        VerticalSpacing(),
        SelectSize(),
      ],
    );
  }
}
