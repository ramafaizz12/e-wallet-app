import 'package:ewalletapp/shared/Theme.dart';
import 'package:flutter/material.dart';

class Friendlytips extends StatelessWidget {
  const Friendlytips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Friendly Tips",
          style:
              textpoppins.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          child: GridView.builder(
              itemCount: 4,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  crossAxisCount: 2,
                  childAspectRatio: (8 / 7)),
              itemBuilder: (context, index) => containerBerita()),
        )
      ],
    );
  }

  Widget containerBerita() {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: whitecolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: LayoutBuilder(
        builder: (context, p1) => Column(
          children: [
            Flexible(
              flex: 2,
              child: SizedBox(
                width: p1.maxWidth,
                height: p1.maxHeight * 0.4,
                child: Image.asset(
                  'assets/creditcard.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flexible(
                flex: 1,
                child: Text(
                  "Best tips for using a credit card",
                  style: textpoppins,
                ))
          ],
        ),
      ),
    );
  }
}
