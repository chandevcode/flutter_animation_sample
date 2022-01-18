import 'package:flutter/material.dart';

import 'screens/animated_search_bar.dart';
import 'screens/curverd_navigation_bar.dart';
import 'screens/staggered_grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimateSearch(),
    );
  }
}
