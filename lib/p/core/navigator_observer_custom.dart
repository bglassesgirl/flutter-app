import 'package:flutter/material.dart';

class NavigatorObserverCustom extends NavigatorObserver{

  @override
  // ignore: unnecessary_overrides
  void didPush(Route route, Route? previousRoute) => super.didPush(route, previousRoute);
  @override
  // ignore: unnecessary_overrides
  void didPop(Route route, Route? previousRoute) => super.didPop(route, previousRoute);
}