import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:familylost_faan/widgets/HomeAppBar.dart';
import 'package:familylost_faan/widgets/CategoriesWidget.dart';
import 'package:familylost_faan/widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //temporary height
            //height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                //Search Widget
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                            // hintStyle:
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),

                //Categories
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                //Categories Widget
                CategoriesWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Puppies Ready for Love", //Estoy programando en inglés para probar traducción automática
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),

                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {},
        color: Color(0xFF4C53A5),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        height: 70,
        backgroundColor: Colors.transparent,
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            //label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            //label: 'Search',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
            ),
            //label: 'Chat',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
            //label: 'Chat',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.perm_identity,
              color: Colors.white,
            ),
            //label: 'Personal',
          ),
        ],
      ),
    );
  }
}
