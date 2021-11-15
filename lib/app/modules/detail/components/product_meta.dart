import 'package:bazzar/core.dart';

class ProductMeta extends StatelessWidget {
  const ProductMeta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '\$149.99',
                style: Get.textTheme.subtitle1!.copyWith(
                  color: cPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              ...List.generate(
                4,
                (index) => Icon(
                  Icons.star,
                  size: 14,
                  color: cPrimary,
                ),
              ),
              Icon(
                Icons.star,
                size: 14,
                color: cGrey,
              ),
              HorizontalSpacing(of: 5),
              Text('4.5'),
            ],
          ),
          Row(
            children: [
              Text(
                'Sporty Sneaker',
                style: Get.textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                '20 Sold | ',
                style: Get.textTheme.caption,
              ),
              Text(
                'In Stock',
                style: Get.textTheme.caption!.copyWith(
                  color: cPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
