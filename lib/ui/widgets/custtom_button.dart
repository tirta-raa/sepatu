part of 'widgets.dart';

class CusttomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  final TextStyle textStyle;
  final double width;
  final double height;
  final EdgeInsets margin;

  const CusttomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.textStyle,
    this.color = const Color(0xFF6C5ECF),
    this.width = double.infinity,
    this.height = 50,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
