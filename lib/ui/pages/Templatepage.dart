part of 'pages.dart';

class Templatepage extends StatelessWidget {
  bool backbutton;
  String header;
  bool sliderbutton;
  dynamic haldata;
  Templatepage(
      {super.key,
      this.backbutton = true,
      required this.header,
      required this.haldata,
      this.sliderbutton = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (p0, p1) => SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          backbutton != false
                              ? Flexible(
                                  flex: 1,
                                  child: FloatingActionButton(
                                    onPressed: () {},
                                    child: Image.asset('assets/sliders.png'),
                                  ),
                                )
                              : emptyBox(),
                          Flexible(
                              flex: 2,
                              child: Text(
                                header,
                                style: textpoppins.copyWith(
                                    fontSize: p1.maxHeight * 0.025,
                                    fontWeight: FontWeight.bold),
                              )),
                          sliderbutton != false
                              ? Flexible(
                                  flex: 1,
                                  child: Image.asset(
                                    'assets/sliders.png',
                                    scale: 3,
                                  ))
                              : emptyBox()
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: p1.maxHeight * 0.05),
                        child: haldata,
                      )
                    ],
                  ),
                ),
              )),
    );
  }

  Widget emptyBox() {
    return const Flexible(
        flex: 1,
        child: SizedBox(
          width: 50,
          height: 20,
        ));
  }
}
