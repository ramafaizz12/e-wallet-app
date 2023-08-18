part of 'pages.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController inputnama = TextEditingController();
  final TextEditingController inputemail = TextEditingController();
  final TextEditingController inputpass = TextEditingController();
  final TextEditingController inputpin = TextEditingController();
  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (p0, p1) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/logo2.png',
                      width: p1.maxWidth * 0.3,
                      height: p1.maxHeight * 0.3,
                    ),
                  ),
                  Text(
                    "Join Us to Unlock\n Your Growth",
                    style: textpoppins.copyWith(
                        color: darkpurplecolor,
                        fontWeight: FontWeight.bold,
                        fontSize: p1.maxHeight * 0.025),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: p1.maxWidth * 0.04, right: p1.maxWidth * 0.04),
                    child: Container(
                      width: p1.maxWidth,
                      height: p1.maxHeight * 0.4,
                      decoration: BoxDecoration(
                          color: whitecolor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: p1.maxWidth * 0.05,
                            right: p1.maxWidth * 0.05,
                            top: p1.maxHeight * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: p1.maxWidth * 0.32,
                                  height: p1.maxHeight * 0.2,
                                  child: Image.asset('assets/upload.png'),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: backgroudcolor),
                                ),
                                Text(
                                  "Passport/ID Card",
                                  style: textpoppins.copyWith(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            // Column(
                            //   children: [
                            //     Container(
                            //       width: p1.maxWidth * 0.32,
                            //       height: p1.maxHeight * 0.2,
                            //       child: Image.asset('assets/upload.png'),
                            //       decoration: BoxDecoration(
                            //           shape: BoxShape.circle,
                            //           color: backgroudcolor),
                            //     ),
                            //     Text("Shayna Hanna"),
                            //     TextInput(
                            //       nama: 'Set PIN (6 digit number)',
                            //       width: p1.maxWidth,
                            //       height: p1.maxHeight * 0.04,
                            //       textcontrol: inputpin,
                            //       obscure: true,
                            //     )
                            //   ],
                            // ),
                            // Column(
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //   children: [
                            //     TextInput(
                            //       nama: 'Full Name',
                            //       textcontrol: inputnama,
                            //       width: p1.maxWidth,
                            //       height: p1.maxHeight * 0.05,
                            //     ),
                            //     TextInput(
                            //       nama: 'Email Address',
                            //       textcontrol: inputemail,
                            //       width: p1.maxWidth,
                            //       height: p1.maxHeight * 0.05,
                            //     ),
                            //     TextInput(
                            //       nama: 'Password',
                            //       textcontrol: inputpass,
                            //       width: p1.maxWidth,
                            //       height: p1.maxHeight * 0.05,
                            //     ),
                            //   ],
                            // ),
                            Buttonutama(
                              nama: 'Continue',
                              width: p1.maxWidth,
                              height: p1.maxHeight * 0.06,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: p1.maxHeight * 0.05,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ));
                          },
                          child: Text("Skip for Now")))
                  // Center(
                  //     child:
                  //         TextButton(onPressed: () {}, child: Text("Sign In")))
                ],
              )),
    );
  }
}
