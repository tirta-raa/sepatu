part of '../pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController fullNameController =
      TextEditingController(text: '');

  final TextEditingController userNameController =
      TextEditingController(text: '');

  final TextEditingController emailController = TextEditingController(text: '');

  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    //
    Widget fullnameField() {
      return CusttomTextField(
        title: 'Full Name',
        imageAsset: 'assets/ic_user.png',
        hintText: 'Your Full Name',
        controller: fullNameController,
      );
    }

    Widget usernameField() {
      return CusttomTextField(
        title: 'Username',
        imageAsset: 'assets/ic_circle.png',
        hintText: 'Your Username',
        controller: userNameController,
      );
    }

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

    Widget signUpButton() {
      return CusttomButton(
        onPressed: () {},
        text: 'Sign Up',
        textStyle: whiteTextStyle2,
      );
    }

    Widget signInButton() {
      return CusttomTextButton(
        textLeft: "Already have an account?  ",
        textRight: 'Sign In',
        textButtonOnTap: () {},
      );
    }

    return Stack(
      children: [
        SignPage(
          title: 'Sign Up',
          description: 'Register and Happy Shoping',
          body: Column(
            children: [
              fullnameField(),
              usernameField(),
              emailField(),
              passwordField(),
              signUpButton(),
            ],
          ),
        ),
        signInButton(),
      ],
    );
  }
}
