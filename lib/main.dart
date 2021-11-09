import 'package:bazzar/core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: cWhite,
          elevation: 0,
          iconTheme: IconThemeData(
            color: cGrey,
          ),
        ),
        scaffoldBackgroundColor: cWhite,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
