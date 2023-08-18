part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingPage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashcolor,
      body: LayoutBuilder(
          builder: (p0, p1) => Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: p1.maxWidth * 0.5,
                  height: p1.maxHeight * 0.5,
                ),
              )),
    );
  }
}
