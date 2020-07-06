import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/util.dart';

class LoadingWidget extends StatelessWidget {
  double height, width;
  final String message;

  LoadingWidget({Key key, @required this.message}) : super(key: key);

  Widget _buildLoading() {
    return SpinKitRotatingCircle(
      color: Color(getRandomQuoteColor()),
      size: 40.0,
    );
  }

  Widget _buildLoadingText() {
    return Text(
      message,
      style: GoogleFonts.poppins(
        fontSize: 22.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildLoading(),
        SizedBox(
          height: height * 0.05,
          width: width * 1,
        ),
        _buildLoadingText(),
      ],
    );
  }
}
