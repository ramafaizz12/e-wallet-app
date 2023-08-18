part of 'widgets.dart';

class ContainerTambah extends StatelessWidget {
  final double width;
  final double height;
  const ContainerTambah({super.key, this.width = 0, this.height = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        margin: const EdgeInsets.only(bottom: 42),
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 1,
          backgroundColor: bluecolor,
          child: SizedBox(
            height: 26,
            width: 26,
            child: Image.asset('assets/circle.png'),
          ),
        ));
  }
}
