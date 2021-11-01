part of '../pages.dart';

class CartIlustrationPage extends StatelessWidget {
  const CartIlustrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IlustrationPage(
      image: 'assets/cart.png',
      title: 'Opss! Your Cart is Empty',
      description: "Let's find your favorite shoes",
      titleButton1: 'Explore Store',
      button1: () {},
    );
  }
}
