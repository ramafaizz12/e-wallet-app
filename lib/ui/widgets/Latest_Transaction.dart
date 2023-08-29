import 'package:ewalletapp/shared/Theme.dart';
import 'package:flutter/material.dart';

class Latesttransaction extends StatelessWidget {
  const Latesttransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style:
              textpoppins.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              color: whitecolor, borderRadius: BorderRadius.circular(20)),
          child: GridView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 1.0,
                  crossAxisCount: 1,
                  childAspectRatio: (25 / 4)),
              itemBuilder: (context, index) => containerTransaction(
                  'Top Up', 'Yesterday', 'assets/Data.png', '+ 450.000')),
        )
      ],
    );
  }

  Widget containerTransaction(
      String transaction, String date, String image, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 1,
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 30,
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(transaction), Text(date)],
          ),
        ),
        Flexible(flex: 1, child: Text(price))
      ],
    );
  }
}
