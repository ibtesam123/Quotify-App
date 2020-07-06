import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/util.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1200)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/HomePage'),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text(
        'Quotify',
        style: TextStyle(
          color: Colors.white,
          fontSize: 72.0,
          fontFamily: 'KS',
          letterSpacing: 4.5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorList['violet']),
      body: _buildBody(),
    );
  }
}
