part of 'widgets.dart';

class CusttomTabbar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int)? onTap;
  const CusttomTabbar({
    Key? key,
    this.selectedIndex = 0,
    this.titles = const [],
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: titles
            .map(
              (e) => GestureDetector(
                onTap: () {
                  if (onTap != null) {
                    onTap!(titles.indexOf(e));
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(
                    right: 16,
                    left: titles.indexOf(e) != 0 ? 0 : 16,
                  ),
                  width: 83,
                  height: 40,
                  decoration: BoxDecoration(
                    color: selectedIndex == titles.indexOf(e)
                        ? primaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: selectedIndex == titles.indexOf(e)
                          ? Colors.transparent
                          : const Color(0xFF302F37),
                      width: 0.5,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      e,
                      style: whiteTextStyle1.copyWith(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList()

        // Text(
        //       e,
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontWeight: FontWeight.bold,
        //         color: selectedIndex == titles.indexOf(e)
        //             ? Colors.black
        //             : Colors.grey,
        //       ),
        //     ),

        // children: [
        //   Container(
        //     width: 83,
        //     height: 40,
        //     decoration: BoxDecoration(
        //       color: primaryColor,
        //       borderRadius: BorderRadius.circular(12),
        //     ),
        //     child: Center(
        //       child: Text(
        //         'All Shoes',
        //         style: whiteTextStyle1.copyWith(
        //           fontSize: 13,
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
        );
  }
}
