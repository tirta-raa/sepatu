part of 'widgets.dart';

class CusttomTextButton extends StatelessWidget {
  final Function()? textButtonOnTap;
  final String textLeft;
  final String textRight;
  const CusttomTextButton({
    Key? key,
    this.textButtonOnTap,
    this.textLeft = '',
    this.textRight = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textLeft,
              style: greyTextStyle.copyWith(
                color: const Color(0xFF504F5E),
                decoration: TextDecoration.none,
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: textButtonOnTap ?? () {},
              child: Text(
                textRight,
                style: greyTextStyle.copyWith(
                  color: primaryColor,
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
