import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_parcel/common/presentation/routing/router.gr.dart';
import 'package:smart_parcel/common/theme.dart';
import 'package:smart_parcel/common/utils/constants.dart';
import 'package:smart_parcel/common/utils/extensions/string_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) {
        return LayoutConstants.autoAppBar(
          title: tabsRouter.current.path.capitalize(),
          context: context,
        );
      },
      routes: const [
        HomeRouter(),
        ParcelRouter(),
        ProfileRouter(),
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                "assets/images/home.svg",
                color: getColorForIndex(0, tabsRouter.activeIndex),
                height: 18,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                "assets/images/parcel.svg",
                color: getColorForIndex(1, tabsRouter.activeIndex),
                height: 18,
              ),
            ),
            label: 'Parcels',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                "assets/images/profile.svg",
                color: getColorForIndex(2, tabsRouter.activeIndex),
                height: 18,
              ),
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                "assets/images/settings.svg",
                color: getColorForIndex(3, tabsRouter.activeIndex),
                height: 18,
              ),
            ),
            label: 'Settings',
          ),
        ],
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        currentIndex: tabsRouter.activeIndex,
        unselectedItemColor: GlobalTheme.lightGrey,
        onTap: tabsRouter.setActiveIndex,
        showUnselectedLabels: true,
        elevation: 0.0,
      ),
    );
  }

  Color getColorForIndex(int index, int currentIndex) {
    if (currentIndex == index) {
      return GlobalTheme.primaryColor;
    }
    return GlobalTheme.lightGrey;
  }
}
