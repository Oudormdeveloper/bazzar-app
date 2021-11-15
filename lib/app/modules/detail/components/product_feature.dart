import 'package:bazzar/core.dart';

class ProductFeature extends StatelessWidget {
  const ProductFeature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      decoration: BoxDecoration(
        color: cPrimary,
        borderRadius: BorderRadius.circular(kvBorderRadius),
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0.70, -1),
            child: IconButton(
              onPressed: () {
                print('ok');
              },
              icon: Icon(
                Icons.share,
                color: cPrimary,
              ),
            ),
          ),
          Align(
            alignment: Alignment(1, -1),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
                color: cPrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
