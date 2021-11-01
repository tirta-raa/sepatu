part of '../pages.dart';

class FavoritIlustrationPage extends StatelessWidget {
  const FavoritIlustrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IlustrationPage(
      image: 'assets/love.png',
      title: " You don't have dream shoes?",
      description: "Let's find your favorite shoes",
      titleButton1: 'Explore Store',
      button1: () {},
    );
  }
}
