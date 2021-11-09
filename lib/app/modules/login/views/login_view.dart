import 'package:bazzar/core.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'bazaar',
              style: h3TextStyle().copyWith(
                color: cWhite,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: h5TextStyle(),
                ),
                VerticalSpacing(),
                KVTextFormField(
                  hintext: 'Email',
                  prefixIcon: Icons.person,
                ),
                KVTextFormField(
                  hintext: 'Password',
                  prefixIcon: Icons.lock,
                ),
                SizedBox(height: 30),
                KVPrimaryButton(
                  fillColor: cWhite,
                  textColor: cPrimary,
                  text: 'Sign In',
                  onPressed: () {
                    Get.offAllNamed(Routes.MASTER);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: kBody2Text().copyWith(
                    color: cWhite,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.SIGN_UP);
                    },
                    child: Text(
                      'Sign Up',
                      style: kBody1Text().copyWith(
                        color: cWhite,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
