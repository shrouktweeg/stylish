import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_text_style.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../generated/l10n.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home View")),
    Center(child: Text("WishList View")),
    Center(child: Text("Cart View")),
    Center(child: Text("Search View")),
    Center(child: Text("Setting View")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.white,
          iconSize: 24.sp,
          selectedLabelStyle: AppTextStyles.roboto12MediumRed,
          unselectedLabelStyle:AppTextStyles.roboto12RegularBlack ,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: AppColors.primaryRed,
          unselectedItemColor: AppColors.black,
          items:  [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: S.of(context).Home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: S.of(context).WishList,
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                width: 54.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 2),
                          blurRadius: 14,
                          spreadRadius: 0,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ],
                  ),
                  child: Icon(Icons.shopping_cart_outlined)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: S.of(context).Search,
            ),  BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: S.of(context).Setting,
            ),
      
      
          ],
        ),
      ),
    );
  }
}