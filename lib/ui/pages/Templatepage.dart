part of 'pages.dart';

class Templatepage extends StatelessWidget {
  dynamic haldata;
  Templatepage({super.key, this.haldata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (p0, p1) => Padding(
                padding: EdgeInsets.only(
                    top: p1.maxHeight * 0.1,
                    left: p1.maxWidth * 0.06,
                    right: p1.maxWidth * 0.06),
                child: haldata,
              )),
    );
  }
}
