part of 'widgets.dart';

class MenuOverview extends StatelessWidget {
  const MenuOverview({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> gambar = [
      'assets/topup.png',
      'assets/send.png',
      'assets/wd.png',
      'assets/more.png'
    ];
    List<String> namamenu = ['Top Up', 'Send', 'Withdraw', 'More'];
    return LayoutBuilder(
      builder: (context, p1) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: textpoppins.copyWith(
                fontWeight: FontWeight.bold, fontSize: p1.maxHeight * 0.1),
          ),
          SizedBox(
            height: p1.maxHeight * 0.05,
          ),
          SizedBox(
            width: p1.maxWidth,
            height: p1.maxHeight * 0.3,
            child: GridView.builder(
              itemCount: namamenu.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  // mainAxisSpacing: 1.0,
                  // crossAxisSpacing: 1.0,
                  crossAxisCount: 1,
                  childAspectRatio: (5 / 15)),
              itemBuilder: (context, index) => ContainerMenuOverview(
                  gambar: gambar[index], text: namamenu[index]),
            ),
          )
        ],
      ),
    );
  }
}
