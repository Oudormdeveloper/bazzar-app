import 'package:bazzar/core.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDetailInfo(
          captionLeft: 'brand',
          captionRight: 'sku',
          textLeft: 'Name Boots',
          textRight: '09789687',
        ),
        _buildDetailInfo(
          captionLeft: 'condition',
          captionRight: 'material',
          textLeft: 'Brand new, With box',
          textRight: 'Faux Sued, Velvet',
        ),
        _buildDetailInfo(
          captionLeft: 'category',
          captionRight: 'fiiting',
          textLeft: 'Men Shoes',
          textRight: 'True to Size',
        ),
      ],
    );
  }

  Column _buildDetailInfo({
    required String captionLeft,
    required String captionRight,
    required String textLeft,
    required String textRight,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              captionLeft,
              style: Get.textTheme.caption,
            ),
            Text(
              captionRight,
              style: Get.textTheme.caption,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textLeft,
              style: Get.textTheme.bodyText2,
            ),
            Text(
              textRight,
              style: Get.textTheme.bodyText2,
            ),
          ],
        ),
        VerticalSpacing(),
      ],
    );
  }
}
