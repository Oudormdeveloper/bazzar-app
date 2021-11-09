import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartView extends GetView<GetStartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'bazaar',
              style: Get.textTheme.headline3!.copyWith(
                color: cPrimary,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            SizedBox(height: 50),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: SvgPicture.asset('assets/images/successful.svg'),
            ),
            SizedBox(height: 50),
            KVPrimaryButton(
              text: 'Take a Lock',
              onPressed: () {},
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                child: Text('Sign In'),
                onPressed: () {
                  Get.offNamed(Routes.LOGIN);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
