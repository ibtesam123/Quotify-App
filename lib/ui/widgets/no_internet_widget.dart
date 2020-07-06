import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoInternetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/nointernet.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            'No Internet Connection',
            style: GoogleFonts.poppins(
              fontSize: 22.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
