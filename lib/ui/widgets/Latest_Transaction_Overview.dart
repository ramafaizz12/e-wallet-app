part of 'widgets.dart';

class Latesttransaction extends StatelessWidget {
  const Latesttransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transactions",
          style:
              textpoppins.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const LatestTransactionBox()
      ],
    );
  }
}
