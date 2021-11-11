import 'package:bazzar/core.dart';

TextStyle h3TextStyle() {
  return Get.textTheme.headline3!.copyWith(
    color: cWhite,
  );
}

TextStyle h5TextStyle() {
  return Get.textTheme.headline5!.copyWith(
    color: cWhite,
  );
}

TextStyle h6TextStyle() {
  return Get.textTheme.headline6!.copyWith();
}

TextStyle kButtonText() {
  return Get.textTheme.button!.copyWith(
    color: Colors.black,
  );
}

TextStyle kBody1Text() {
  return Get.textTheme.bodyText1!
      .copyWith(color: Colors.black, fontWeight: FontWeight.bold);
}

TextStyle kBody2Text() {
  return Get.textTheme.bodyText2!.copyWith(
    color: Colors.black,
  );
}

TextStyle kCaptionText() {
  return Get.textTheme.caption!;
}
