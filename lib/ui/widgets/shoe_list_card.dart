part of 'widgets.dart';

class ShoeListCard extends StatelessWidget {
  const ShoeListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            'assets/shoes.png',
            fit: BoxFit.contain,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Football',
                style: greyTextStyle.copyWith(fontSize: 12),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: Text(
                  'Ultra 4D Running Shoes',
                  style: whiteTextStyle1.copyWith(fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Text(
                'IDR 285,73',
                style: blueTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
