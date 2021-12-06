import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '/core/helpers/AltScreenHelpers/alt.profile.helper.dart';
import '/core/helpers/ChatroomHelper/chatroom.helper.dart';
import '/core/helpers/FeedHelper/feed.helper.dart';
import '/core/helpers/GroupmessageHelper/group.message.helper.dart';
import '/core/helpers/HomeScreenHelper/homePage.helper.dart';
import '/core/helpers/LandingHelpers/landing.notifier.dart';
import '/core/helpers/LandingHelpers/landing.utlis.dart';
import '/core/helpers/LandingHelpers/landingService.notifier.dart';
import '/core/helpers/ProfileHelper/profile.helper.dart';
import '/core/helpers/StoryHelper/story.helper.dart';
import '/core/utils/posts.functions.dart';
import '/core/utils/upload.post.dart';
import '/core/services/authentication.notifier.dart';
import '/core/services/firebase.notifier.dart';

List<SingleChildWidget> providers = [...remoteProviders];

List<SingleChildWidget> remoteProviders = [
  ChangeNotifierProvider(create: (_) => Authentication()),
  ChangeNotifierProvider(create: (_) => LandingNotifier()),
  ChangeNotifierProvider(create: (_) => FirebaseNotifier()),
  ChangeNotifierProvider(create: (_) => LandingService()),
  ChangeNotifierProvider(create: (_) => LandingUtils()),
  ChangeNotifierProvider(create: (_) => HomePageHelpers()),
  ChangeNotifierProvider(create: (_) => ProfileHelpers()),
  ChangeNotifierProvider(create: (_) => UploadPost()),
  ChangeNotifierProvider(create: (_) => FeedHelpers()),
  ChangeNotifierProvider(create: (_) => PostFunctions()),
  ChangeNotifierProvider(create: (_) => AltProfileHelper()),
  ChangeNotifierProvider(create: (_) => ChatroomHelper()),
  ChangeNotifierProvider(create: (_) => GroupMessageHelper()),
  ChangeNotifierProvider(create: (_) => StoriesHelper()),
];
