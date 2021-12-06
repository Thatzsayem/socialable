import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/app/constants/constant.colors.dart';
import '/core/helpers/HomeScreenHelper/homePage.helper.dart';
import '/core/services/firebase.notifier.dart';
import '/meta/screen/Chatscreen/chat.screen.dart';
import '/meta/screen/Feedscreen/feed.screen.dart';
import '/meta/screen/Profilescreen/profile.screen.dart';
import '/meta/screen/SearchScreen/search.user.screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Provider.of<FirebaseNotifier>(context, listen: false).initUserData(context);
    super.initState();
  }

  final PageController homePageController = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: PageView(
        controller: homePageController,
        children: [
          FeedScreen(),
          SearchUser(),
          ChatRoomScreen(),
          ProfileScreen(),
        ],
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (page) {
          setState(() {
            pageIndex = page;
          });
        },
      ),
      bottomNavigationBar: Provider.of<HomePageHelpers>(context, listen: false)
          .bottomNavBar(pageIndex, homePageController, context),
    );
  }
}
