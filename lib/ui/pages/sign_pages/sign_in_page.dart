part of '../pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    //
    Widget emailField() {
      return CusttomTextField(
        title: 'Email Address',
        imageAsset: 'assets/ic_email.png',
        hintText: 'Your email Address',
        controller: emailController,
      );
    }

    Widget passwordField() {
      return CusttomTextField(
        margin: const EdgeInsets.only(bottom: 30),
        obscureText: true,
        title: 'Password',
        imageAsset: 'assets/ic_lock.png',
        hintText: 'Your Password',
        controller: passwordController,
      );
    }

    Widget signInButton() {
      return CusttomButton(
        onPressed: () {},
        text: 'Sign In',
        textStyle: whiteTextStyle2,
      );
    }

    Widget signUpButton() {
      return CusttomTextButton(
        textLeft: "Don't have an account?  ",
        textRight: 'Sign Up',
        textButtonOnTap: () {},
      );
    }

    return Stack(
      children: [
        SignPage(
          title: 'Login',
          description: 'Sign In to Continue',
          body: Column(
            children: [
              emailField(),
              passwordField(),
              signInButton(),
            ],
          ),
        ),
        signUpButton()
      ],
    );
  }
}
