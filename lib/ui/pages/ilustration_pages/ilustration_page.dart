// ignore_for_file: unnecessary_null_comparison

part of '../pages.dart';

class IlustrationPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final double widhtButton1;
  final String titleButton1;
  final Function() button1;
  final Function()? button2;

  const IlustrationPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.titleButton1,
    required this.button1,
    this.button2,
    this.widhtButton1 = 152,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 80,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              title,
              style: whiteTextStyle2,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              description,
              style: greyTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            CusttomButton(
              width: widhtButton1,
              height: 44,
              margin: const EdgeInsets.only(bottom: 12),
              onPressed: button1,
              text: titleButton1,
              textStyle: whiteTextStyle2,
            ),
            (button2 == null)
                ? const SizedBox()
                : CusttomButton(
                    width: 198,
                    height: 44,
                    color: const Color(0xff39374B),
                    onPressed: button2 ?? () {},
                    text: 'View My Order',
                    textStyle: whiteTextStyle2,
                  ),
          ],
        ),
      ),
    );
  }
}
