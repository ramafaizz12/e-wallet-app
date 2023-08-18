part of 'pages.dart';

class Overviewpage extends StatelessWidget {
  const Overviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,",
                    style: textpoppins.copyWith(
                        fontWeight: FontWeight.w300, fontSize: 20),
                  ),
                  Text(
                    "Shaynahan",
                    style: textpoppins.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  )
                ],
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ],
          ),
          SizedBox(
            height: p1.maxHeight * 0.024,
          ),
          Containercard(
            width: p1.maxWidth,
            height: p1.maxHeight * 0.3,
          )
        ],
      ),
    );
  }
}
