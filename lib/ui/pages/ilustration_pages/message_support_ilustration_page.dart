part of '../pages.dart';

class MessageIlustrationPage extends StatelessWidget {
  const MessageIlustrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IlustrationPage(
      image: 'assets/ic_headset.png',
      title: 'Opss no message yet?',
      description: "You have never done a transaction",
      titleButton1: 'Explore Store',
      button1: () {},
    );
  }
}
