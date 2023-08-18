part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? bottomnavbarindex;
  PageController? pagecontroller;
  @override
  void initState() {
    super.initState();
    bottomnavbarindex = 0;
    pagecontroller = PageController(initialPage: bottomnavbarindex!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (p0, p1) => Stack(
          children: [
            PageView(
              controller: pagecontroller,
              onPageChanged: (value) {
                setState(() {
                  bottomnavbarindex = value;
                });
              },
              children: [
                Templatepage(
                  haldata: const Overviewpage(),
                )
              ],
            ),
            Bottomnavbar(
              bottomnavbarindex: bottomnavbarindex,
              pagecontroller: pagecontroller,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ContainerTambah(
                width: p1.maxWidth * 0.12,
                height: p1.maxHeight * 0.06,
              ),
            )
          ],
        ),
      ),
    );
  }
}
