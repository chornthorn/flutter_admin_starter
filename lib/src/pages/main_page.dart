import 'package:flutter/material.dart';
import 'package:flutter_web_admin/src/pages/book_list.dart';
import 'package:flutter_web_admin/src/pages/notification_page.dart';
import 'package:flutter_web_admin/src/widgets/adaptive_scaffold.dart';
import 'package:animations/animations.dart';
import 'account_page.dart';
import 'course_page.dart';
import 'home_page.dart';
import 'setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      title: FlutterLogo(size: 90),
      currentIndex: _pageIndex,
      destinations: [
        AdaptiveScaffoldDestination(
          title: 'Dashboard',
          icon: Icons.home_outlined,
        ),
        AdaptiveScaffoldDestination(
          title: 'My Courses',
          icon: Icons.video_call_outlined,
        ),
        AdaptiveScaffoldDestination(
          title: 'Notification',
          icon: Icons.notification_important_outlined,
        ),
        AdaptiveScaffoldDestination(
          title: 'Datatable',
          icon: Icons.settings_outlined,
        ),
      ],
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: _pageAtIndex(_pageIndex),
      ),
      onNavigationIndexChange: (newIndex) {
        setState(() {
          _pageIndex = newIndex;
        });
      },
      floatingActionButton:
          _hasFloatingActionButton ? _buildFab(context) : null,
    );
  }

  FloatingActionButton _buildFab(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => () {},
    );
  }

  bool get _hasFloatingActionButton {
    if (_pageIndex == 2 || _pageIndex == 3) return false;
    return true;
  }

  static Widget _pageAtIndex(int index) {
    if (index == 0) {
      return HomePage();
    }

    if (index == 1) {
      return CoursePage();
    }

    if (index == 2) {
      return NotificationPage();
    }

    if (index == 3) {
      return DataTableDemo();
    }

    return Center(child: Text('Settings page'));
  }
}
