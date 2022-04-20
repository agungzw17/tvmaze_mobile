part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? bottomNavBarIndex;
  PageController? pageController;
  Color color = Colors.yellow;

  @override
  void initState() {
    super.initState();

    bottomNavBarIndex = 0;
    pageController = PageController(initialPage: bottomNavBarIndex!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.teal,
          ),
          SafeArea(
              child: Container(
                color: Colors.white,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      bottomNavBarIndex = index;
                    });
                  },
                  controller: pageController,
                  children: const <Widget>[
                    ShowPage(),
                    WatchListPage()
                  ],
                ),
              )),
          createCustomBottomNavbar(),
        ],
      ),
    );
  }

  Widget createCustomBottomNavbar() => Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 70,
      decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20))),
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Color(0xffe5e5e5),
        selectedLabelStyle: GoogleFonts.raleway(
            fontSize: 13, fontWeight: FontWeight.w600),
        unselectedLabelStyle:  GoogleFonts.raleway(
            fontSize: 13, fontWeight: FontWeight.w600),
        currentIndex: bottomNavBarIndex!,
        onTap: (index) {
          setState(() {
            bottomNavBarIndex = index;
            pageController?.jumpToPage(index);
          });
        },
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  height: 20,
                  child: const Icon(MdiIcons.movie, size: 25, ))),
          BottomNavigationBarItem(
              label: "Watch List",
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  height: 20,
                  child: const Icon(MdiIcons.archive, size: 25,))),
        ],
      ),
    ),
  );
}

