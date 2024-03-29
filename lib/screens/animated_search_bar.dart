import 'package:flutter/material.dart';

class AnimateSearch extends StatefulWidget {
  const AnimateSearch({Key? key}) : super(key: key);

  @override
  _AnimateSearchState createState() => _AnimateSearchState();
}

class _AnimateSearchState extends State<AnimateSearch> {
  bool _folded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 700),
        width: _folded ? 56 : 200,
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.white,
            boxShadow: kElevationToShadow[6]),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(left: 16),
                  child: !_folded
                      ? TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.grey[300]),
                              border: InputBorder.none))
                      : null),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 700),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_folded ? 32 : 0),
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(_folded ? 32 : 0),
                          bottomRight: Radius.circular(32)),
                      onTap: () {
                        setState(() {
                          _folded = !_folded;
                        });
                      },
                      child: Icon(_folded ? Icons.search : Icons.close,
                          color: Colors.blue[90])),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
