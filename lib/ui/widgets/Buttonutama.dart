part of 'widgets.dart';

class Buttonutama extends StatelessWidget {
  final double width;
  final double height;
  final String nama;
  final void Function()? fungsi;
  const Buttonutama(
      {super.key,
      this.width = 1,
      this.height = 1,
      this.nama = '',
      this.fungsi});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fungsi,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: bluecolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          nama,
          style: textpoppins.copyWith(
              color: whitecolor, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
