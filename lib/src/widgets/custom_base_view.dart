import 'package:flutter/material.dart';

class CustomBaseView extends StatelessWidget {
  final AppBar appBar;
  final Widget body;
  const CustomBaseView({Key key, this.appBar, @required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: appBar,
          body: body,
        ),
      ),
    );
  }
}
