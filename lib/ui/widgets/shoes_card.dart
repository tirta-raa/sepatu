part of 'widgets.dart';

class ShoesCard extends StatelessWidget {
  const ShoesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: defaultMargin),
            width: 215,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/shoes.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              bottom: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hiking',
                  style: greyTextStyle.copyWith(fontSize: 12),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'COURT VISION 2.0',
                  style: blackTextStyle,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Rp.58,67',
                  style: blueTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
