part of 'widgets.dart';

class TextInput extends StatelessWidget {
  final String nama;
  final String alert;
  final double width;
  final double height;
  final bool obscure;
  final TextEditingController? textcontrol;
  const TextInput(
      {super.key,
      this.nama = '',
      this.alert = '',
      this.textcontrol,
      this.height = 0,
      this.obscure = false,
      this.width = 0});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$nama",
            style: textpoppins.copyWith(
                color: darkpurplecolor, fontWeight: FontWeight.w500),
          ),
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: darkpurplecolor.withOpacity(0.1))),
            child: TextField(
              obscureText: obscure,
              controller: textcontrol,
              decoration: InputDecoration(border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
