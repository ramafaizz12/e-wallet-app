part of 'widgets.dart';

class LatestTransactionBox extends StatelessWidget {
  const LatestTransactionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction,
                style: textpoppins.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                date,
                style: textpoppins.copyWith(
                    fontWeight: FontWeight.w200, color: fontcolorgrey),
              )
            ],
          ),
        ),
        Flexible(
            flex: 1,
            child: Text(
              price,
              style: textpoppins.copyWith(fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
