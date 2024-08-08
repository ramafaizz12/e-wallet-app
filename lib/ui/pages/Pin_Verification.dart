part of 'pages.dart';

class Pinverification extends StatefulWidget {
  const Pinverification({super.key});

  @override
  State<Pinverification> createState() => _PinverificationState();
}

TextEditingController one = TextEditingController();

class _PinverificationState extends State<Pinverification> {
  OtpFieldController controller = OtpFieldController();
  int angkaa = 0;
  List<String> angka = ['0', '1', '2', '3'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: darkpurplecolor,
        body: LayoutBuilder(
          builder: (context, p1) => Padding(
            padding: EdgeInsets.only(
                left: p1.maxWidth * 0.1,
                right: p1.maxWidth * 0.1,
                top: p1.maxHeight * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sha PIN",
                  style: textpoppins.copyWith(
                      fontWeight: FontWeight.bold,
                      color: whitecolor,
                      fontSize: 25),
                ),
                SizedBox(
                  height: p1.maxHeight * 0.06,
                ),
                OTPTextField(
                  length: 4,
                  controller: controller,
                  width: p1.maxWidth * 0.5,
                  fieldWidth: 30,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
                SizedBox(
                  height: p1.maxHeight * 0.1,
                ),
                Text(one.text),
                SizedBox(
                    width: p1.maxWidth,
                    height: p1.maxHeight * 0.5,
                    child: GridView.builder(
                        itemCount: angka.length,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 20.0,
                                crossAxisSpacing: 20.0,
                                crossAxisCount: 4,
                                childAspectRatio: (7 / 8)),
                        itemBuilder: (context, index) => containerangka(
                              angka: index.toString(),
                              fungsi: () {
                                // controller.setFocus(index + 1);
                                controller.setValue(index.toString(), angkaa);
                                setState(() {
                                  angkaa++;
                                });
                              },
                            )))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget containerangka(
      {required String angka, required void Function()? fungsi}) {
    return FloatingActionButton(
      onPressed: fungsi,
      backgroundColor: whitecolor.withOpacity(0.05),
      child: Text(
        angka,
        style: textpoppins.copyWith(fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
