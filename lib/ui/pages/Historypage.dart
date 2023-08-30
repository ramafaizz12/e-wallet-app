import 'package:ewalletapp/shared/Theme.dart';
import 'package:ewalletapp/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Today",
          style:
              textpoppins.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const LatestTransactionBox()
      ],
    );
  }
}
