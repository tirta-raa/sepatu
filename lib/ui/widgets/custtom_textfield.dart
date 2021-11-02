part of 'widgets.dart';

class CusttomTextField extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final EdgeInsets margin;

  const CusttomTextField({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.margin = const EdgeInsets.only(bottom: 20),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          child: Text(
            title,
            style: whiteTextStyle2,
          ),
        ),
        Container(
          margin: margin,
          width: double.infinity,
          height: 50,
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            style: whiteTextStyle2.copyWith(fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: hintText,
              hintStyle: greyTextStyle.copyWith(
                color: const Color(0xFF504F5E),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 19,
                ),
                child: Image.asset(
                  imageAsset,
                  width: 17,
                  height: 12,
                ),
              ),
              filled: true,
              fillColor: bgColor2,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
