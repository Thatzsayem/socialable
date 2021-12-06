import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/app/constants/constant.colors.dart';
import '/core/helpers/FeedHelper/feed.helper.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueGreyColor,
      appBar:
          AppBar(), //Provider.of<FeedHelpers>(context, listen: false).appBar(context),
      body: Column(
        children: [
          Provider.of<FeedHelpers>(context, listen: false)
              .feedStories(context: context),
          Provider.of<FeedHelpers>(context, listen: false).feedBody(context)
        ],
      ),
    );
  }
}
