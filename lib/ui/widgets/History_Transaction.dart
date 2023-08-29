import 'package:ewalletapp/shared/Theme.dart';
import 'package:flutter/material.dart';

class Historytransaction extends StatelessWidget {
  const Historytransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Send Again",
          style:
              textpoppins.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.18,
          child: GridView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 1.0,
                  crossAxisCount: 1,
                  childAspectRatio: (10 / 7)),
              itemBuilder: (context, index) =>
                  containerTransaction('assets/Data.png', '@Yuanita')),
        )
      ],
    );
  }

  Widget containerTransaction(String image, String historyname) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whitecolor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          ),
          Flexible(flex: 1, child: Text(historyname))
        ],
      ),
    );
  }
}
