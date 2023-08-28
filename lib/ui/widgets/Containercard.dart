part of 'widgets.dart';

class Containercard extends StatelessWidget {
  final double width;
  final double height;
  const Containercard({super.key, this.width = 0, this.height = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17), color: bluecolor),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Image.asset('assets/lingkaran.png'))),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shayna Hanna",
                  style: textpoppins.copyWith(
                      color: whitecolor,
                      fontWeight: FontWeight.w300,
                      fontSize: 21),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "****  ****  ****  1280",
                  style: textpoppins.copyWith(
                      color: whitecolor,
                      fontWeight: FontWeight.w300,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  "Balance",
                  style: textpoppins.copyWith(
                      color: whitecolor,
                      fontWeight: FontWeight.w100,
                      fontSize: 17),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Rp.12.500",
                  style: textpoppins.copyWith(
                      color: whitecolor,
                      fontWeight: FontWeight.w700,
                      fontSize: 21),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
