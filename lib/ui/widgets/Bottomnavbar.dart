part of 'widgets.dart';

class Bottomnavbar extends StatefulWidget {
  int? bottomnavbarindex;
  PageController? pagecontroller;
  Bottomnavbar({super.key, this.bottomnavbarindex, this.pagecontroller});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: BottomNavbarclipper(),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: whitecolor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: BottomNavigationBar(
            selectedIconTheme: IconThemeData(color: birumuda),
            unselectedIconTheme: IconThemeData(color: splashcolor),
            selectedLabelStyle: textpoppins,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: textpoppins,
            onTap: (index) {
              setState(() {
                widget.bottomnavbarindex = index;
                widget.pagecontroller!.jumpTo(index.toDouble());
              });
            },
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: birumuda,
            unselectedItemColor: splashcolor,
            currentIndex: widget.bottomnavbarindex!,
            items: [
              BottomNavigationBarItem(
                  label: 'Overview',
                  icon: Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      height: 25,
                      child: const ImageIcon(AssetImage('assets/menu.png')))),
              BottomNavigationBarItem(
                  label: 'History',
                  icon: Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      height: 25,
                      child: const ImageIcon(AssetImage('assets/menu1.png')))),
              BottomNavigationBarItem(
                  label: 'Statistic',
                  icon: Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      height: 25,
                      child: const ImageIcon(AssetImage('assets/menu2.png')))),
              BottomNavigationBarItem(
                  label: 'Reward',
                  icon: Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      height: 25,
                      child: const ImageIcon(AssetImage('assets/menu3.png'))))
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavbarclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width / 2 - 28, 0);
    path.quadraticBezierTo(size.width / 2 - 28, 33, size.width / 2, 33);
    path.quadraticBezierTo(size.width / 2 + 28, 33, size.width / 2 + 28, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
