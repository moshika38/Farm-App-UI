import 'package:farm_management_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: AppColors.lightGreen,
              width: 1.5,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: BottomNavigationBar(
              currentIndex: navigationShell.currentIndex,
              onTap: navigationShell.goBranch,
              iconSize: 22,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              items: [
                BottomNavigationBarItem(
                  icon: _buildAppBarIcons(
                    navigationShell.currentIndex == 0 ? true : false,
                    "https://cdn-icons-png.freepik.com/256/16799/16799821.png?ga=GA1.1.1157317632.1733674362",
                  ),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: _buildAppBarIcons(
                    navigationShell.currentIndex == 1 ? true : false,
                    "https://cdn-icons-png.freepik.com/256/17001/17001991.png?ga=GA1.1.1157317632.1733674362",
                  ),
                  label: 'todo',
                ),
                BottomNavigationBarItem(
                  icon: _buildAppBarIcons(
                    navigationShell.currentIndex == 2 ? true : false,
                    "https://cdn-icons-png.freepik.com/256/17001/17001981.png?ga=GA1.1.1157317632.1733674362",
                  ),
                  label: 'market',
                ),
                BottomNavigationBarItem(
                  icon: _buildAppBarIcons(
                    navigationShell.currentIndex == 3 ? true : false,
                    "https://cdn-icons-png.freepik.com/256/16799/16799429.png?ga=GA1.1.1157317632.1733674362",
                  ),
                  label: 'profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBarIcons(bool isActive, String image) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isActive ? AppColors.lightGreen : AppColors.mainWhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Image.network(
          image,
          fit: BoxFit.contain,
          color: isActive ? AppColors.mainWhite : AppColors.lightGreen,
        ),
      ),
    );
  }
}
