import 'package:flutter/material.dart';
import 'package:inventarios/application/widgets/charts_page.dart';
import 'package:inventarios/application/widgets/discover_page.dart';
import 'package:inventarios/application/widgets/icons.dart';
import 'package:inventarios/application/widgets/svg_asset.dart';
import 'package:inventarios/application/widgets/profile_page.dart';


class HomePage extends StatefulWidget{
  const HomePage({Key? key}) :super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _selectedIndex =0;
  static  List<Widget> _widgetOptions = <Widget>[
    DiscoverPage(),
    ChartsPage(),
    ProfilePage(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: SvgAsset(assetName: AssetName.discover,),
              label: "actual",
              tooltip: "Discover",
              activeIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff4A80f0).withOpacity(0.3),
                      offset: Offset(0,4),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: SvgAsset(
                  assetName: AssetName.discover, color: Color(0xff4A80F0),
                ),
              ),
              ),
              BottomNavigationBarItem(
                icon: SvgAsset(assetName: AssetName.chart,),
                label: "medio",
                tooltip: "Charts",
                activeIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff4A80F0).withOpacity(0.3),
                        offset: Offset(0,4),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: SvgAsset(
                    assetName: AssetName.chart,
                    color: Color(0xff4A80F0),
                  ),
                ),
                ),
                BottomNavigationBarItem(
                  icon: SvgAsset(assetName: AssetName.profile,),
                  label: "futuro",
                  tooltip: "Profile",
                  activeIcon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff4A80f0).withOpacity(0.3),
                          offset: Offset(0,4),
                          blurRadius: 20
                        ),
                      ],
                    ),
                    child: SvgAsset(
                      assetName: AssetName.profile,
                      color: Color(0xff4A80f0),
                    ),
                  ),
                  ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          backgroundColor: Color(0xff1C2031),
        ),
      ),
    );
  }
}