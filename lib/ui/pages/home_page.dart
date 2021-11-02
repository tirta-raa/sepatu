part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: defaultMargin,
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Alex',
                        style: whiteTextStyle1,
                      ),
                      Text(
                        '@alexkeinn',
                        style: whiteTextStyle2.copyWith(
                          color: const Color(0xFF504F5E),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/profile.png',
                    width: 54,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: CusttomTabbar(
                // ignore: prefer_const_literals_to_create_immutables
                titles: [
                  'All Shoes',
                  'Running',
                  'Training',
                  'Basketball',
                  'Hiking',
                ],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
