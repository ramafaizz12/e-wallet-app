part of 'pages.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudcolor,
      body: LayoutBuilder(
        builder: (p0, p1) => Padding(
          padding: EdgeInsets.only(top: p1.maxHeight * 0.2),
          child: Column(
            children: [
              SizedBox(
                width: p1.maxWidth,
                height: p1.maxHeight * 0.37,
                child: CarouselSlider.builder(
                  itemCount: 3,
                  carouselController: _controller,
                  options: CarouselOptions(
                    viewportFraction: 1,
                    aspectRatio: 9 / 7,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      context.read<CounterBloc>().add(index);
                    },
                  ),
                  itemBuilder: (context, index, realIndex) => Image.asset(
                    'assets/vector$index.png',
                    width: p1.maxWidth * 1,
                    height: p1.maxHeight * 1,
                  ),
                ),
              ),
              SizedBox(
                height: p1.maxHeight * 0.02,
              ),
              ContainerOnBorading(
                width: p1.maxWidth * 0.9,
                height: p1.maxHeight * 0.36,
                controller1: _controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}
