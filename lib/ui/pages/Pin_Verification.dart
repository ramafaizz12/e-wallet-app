part of 'pages.dart';

class Pinverification extends StatelessWidget {
  const Pinverification({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> controller;
    return SafeArea(
      child: Scaffold(
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
                OtpTextField(
                  obscureText: false,
                  autoFocus: true,
                  numberOfFields: 6,

                  textStyle: textpoppins.copyWith(
                      fontWeight: FontWeight.bold, color: whitecolor),
                  borderColor: fontcolorgrey,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: false,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        });
                  }, // end onSubmit
                ),
                SizedBox(
                  height: p1.maxHeight * 0.1,
                ),
                SizedBox(
                    width: p1.maxWidth,
                    height: p1.maxHeight * 0.5,
                    child: GridView.builder(
                        itemCount: 11,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 20.0,
                                crossAxisSpacing: 20.0,
                                crossAxisCount: 4,
                                childAspectRatio: (7 / 8)),
                        itemBuilder: (context, index) => containerangka()))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget containerangka() {
    return FloatingActionButton(
      backgroundColor: whitecolor.withOpacity(0.05),
      onPressed: () {},
      child: Text(
        "1",
        style: textpoppins.copyWith(fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
