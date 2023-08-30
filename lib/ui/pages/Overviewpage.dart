part of 'pages.dart';

class Overviewpage extends StatelessWidget {
  const Overviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (p0, p1) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: p1.maxHeight * 0.1,
                left: p1.maxWidth * 0.06,
                right: p1.maxWidth * 0.06),
            child: Column(
              children: [
                const Profile(),
                SizedBox(
                  height: p1.maxHeight * 0.024,
                ),
                Containercard(
                  width: p1.maxWidth,
                  height: p1.maxHeight * 0.3,
                ),
                SizedBox(
                  height: p1.maxHeight * 0.024,
                ),
                ContainerProgress(
                    width: p1.maxWidth, height: p1.maxHeight * 0.1),
                SizedBox(
                  height: p1.maxHeight * 0.03,
                ),
                SizedBox(
                    width: p1.maxWidth,
                    height: p1.maxHeight * 0.3,
                    child: const MenuOverview()),
                SizedBox(
                  height: p1.maxHeight * 0.02,
                ),
                const Latesttransaction(),
                SizedBox(
                  height: p1.maxHeight * 0.02,
                ),
                const Historytransaction(),
                SizedBox(
                  height: p1.maxHeight * 0.03,
                ),
                const Friendlytips(),
                SizedBox(
                  height: p1.maxHeight * 0.2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
