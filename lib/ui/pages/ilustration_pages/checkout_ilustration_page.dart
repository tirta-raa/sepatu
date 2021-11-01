part of '../pages.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IlustrationPage(
      image: 'assets/cart.png',
      title: 'You made a transaction',
      description: 'Stay at home while we \nprepare your dream shoes',
      titleButton1: 'Order Other Shoes',
      button1: () {},
      widhtButton1: 196,
      button2: () {},
    );
  }
}
