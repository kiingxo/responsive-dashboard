import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/routing/router.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:flutter/cupertino.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );
