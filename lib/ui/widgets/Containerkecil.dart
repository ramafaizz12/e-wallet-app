part of 'widgets.dart';

class Containerkecil extends StatelessWidget {
  final Color warna;

  const Containerkecil({super.key, this.warna = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(shape: BoxShape.circle, color: warna),
    );
  }
}
