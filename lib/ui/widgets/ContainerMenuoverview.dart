part of 'widgets.dart';

class ContainerMenuOverview extends StatelessWidget {
  final String gambar;
  final String text;
  const ContainerMenuOverview(
      {super.key, required this.gambar, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: whitecolor),
          child: Image.asset(
            gambar,
            scale: 3.5,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style:
              textpoppins.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
