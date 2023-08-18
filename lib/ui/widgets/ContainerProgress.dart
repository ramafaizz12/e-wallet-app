part of 'widgets.dart';

class ContainerProgress extends StatelessWidget {
  final double width;
  final double height;
  const ContainerProgress(
      {super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: whitecolor),
        child: LayoutBuilder(
          builder: (context, p1) => Padding(
            padding: EdgeInsets.only(
                left: p1.maxWidth * 0.1,
                right: p1.maxWidth * 0.1,
                top: p1.maxHeight * 0.2),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Level 1",
                      style: textpoppins.copyWith(
                          fontSize: p1.maxHeight * 0.25,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "55 %",
                          style: textpoppins.copyWith(
                              fontWeight: FontWeight.bold,
                              color: green,
                              fontSize: p1.maxHeight * 0.25),
                        ),
                        Text(
                          "of 10M",
                          style: textpoppins.copyWith(
                              fontSize: p1.maxHeight * 0.25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: p1.maxHeight * 0.1,
                ),
                LinearPercentIndicator(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  width: p1.maxWidth * 0.8,
                  barRadius: const Radius.circular(20),
                  lineHeight: p1.maxHeight * 0.1,
                  percent: 0.5,
                  backgroundColor: fontcolorgrey,
                  progressColor: green,
                ),
              ],
            ),
          ),
        ));
  }
}
