
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/pages/container/container_page.dart';
import 'package:flutter_fundamentos/pages/home/home_page.dart';
import 'package:flutter_fundamentos/pages/media_query/media_query_page.dart';
import 'package:flutter_fundamentos/pages/rows_columns/rows_columns.dart';

void main()
  {runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      routes: {
        '/':(_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns':(_) => const RowsColumns(),
        '/media_query':(_) => const MediaQueryPage(),
      },

    );
  }
}
