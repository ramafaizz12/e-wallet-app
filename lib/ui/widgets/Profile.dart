part of 'widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Howdy,",
              style: textpoppins.copyWith(
                  fontWeight: FontWeight.w300, fontSize: 20),
            ),
            Text(
              "Shaynahan",
              style: textpoppins.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 22),
            )
          ],
        ),
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/profile.png'),
        ),
      ],
    );
  }
}
