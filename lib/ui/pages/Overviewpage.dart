part of 'pages.dart';

class Overviewpage extends StatelessWidget {
  const Overviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) => Column(
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
          ContainerProgress(width: p1.maxWidth, height: p1.maxHeight * 0.1),
          SizedBox(
            height: p1.maxHeight * 0.03,
          ),
          SizedBox(
              width: p1.maxWidth,
              height: p1.maxHeight * 0.3,
              child: const MenuOverview())
        ],
      ),
    );
  }
}
