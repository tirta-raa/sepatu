part of '../pages.dart';

class SignPage extends StatelessWidget {
  final String title;
  final String description;
  final Widget body;

  const SignPage({
    Key? key,
    required this.title,
    required this.description,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(
                  defaultMargin, defaultMargin, defaultMargin, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: whiteTextStyle1,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 70),
                    child: Text(
                      description,
                      style: greyTextStyle.copyWith(
                        color: const Color(0xFF504F5E),
                      ),
                    ),
                  ),
                  body,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
