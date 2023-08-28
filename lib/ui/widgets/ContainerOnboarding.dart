part of 'widgets.dart';

class ContainerOnBorading extends StatelessWidget {
  final CarouselController controller1;
  final double width;
  final double height;
  const ContainerOnBorading({
    super.key,
    this.height = 0,
    required this.controller1,
    this.width = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: 0.04),
      height: height,
      decoration: BoxDecoration(
          color: whitecolor, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: LayoutBuilder(
          builder: (p0, p1) => BlocBuilder<CounterBloc, int>(
            builder: (context, state) {
              return Column(
                children: [
                  Text(
                    state == 0
                        ? "Grow Your\nFinancial Today"
                        : state == 1
                            ? "Build From\nZero to Freedoom"
                            : "Start Together",
                    textAlign: TextAlign.center,
                    style: textpoppins.copyWith(
                        color: fontcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: p1.maxHeight * 0.1),
                  ),
                  SizedBox(
                    height: p1.maxHeight * 0.02,
                  ),
                  Text(
                    state == 0
                        ? "Our system is helping you to\nachieve a better goal"
                        : state == 1
                            ? "We provide tips for you so that\nyou can adapt easier"
                            : "We will guide you to where\nyou wanted it too",
                    textAlign: TextAlign.center,
                    style: textpoppins.copyWith(
                        color: fontcolorgrey, fontSize: p1.maxHeight * 0.07),
                  ),
                  SizedBox(
                    height: p1.maxHeight * 0.16,
                  ),
                  state == 2
                      ? Column(
                          children: [
                            Buttonutama(
                              width: p1.maxWidth,
                              height: p1.maxHeight * 0.2,
                              nama: 'Get Started',
                              fungsi: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupPage(),
                                    ));
                              },
                            ),
                            TextButton(onPressed: () {}, child: const Text("Sign In"))
                          ],
                        )
                      : Row(
                          children: [
                            SizedBox(
                              width: p1.maxWidth * 0.2,
                              height: p1.maxHeight * 0.06,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Containerkecil(
                                    warna:
                                        state == 0 ? bluecolor : fontcolorgrey,
                                  ),
                                  Containerkecil(
                                      warna: state == 1
                                          ? bluecolor
                                          : fontcolorgrey),
                                  Containerkecil(
                                      warna: state == 2
                                          ? bluecolor
                                          : fontcolorgrey),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: p1.maxWidth * 0.3,
                            ),
                            Buttonutama(
                              width: p1.maxWidth * 0.5,
                              height: p1.maxHeight * 0.2,
                              nama: 'Continue',
                              fungsi: () {
                                controller1.nextPage();
                              },
                            )
                          ],
                        )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
