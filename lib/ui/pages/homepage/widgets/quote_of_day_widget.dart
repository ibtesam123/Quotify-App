import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../blocs/qod/qod_bloc.dart';
import '../../../../core/util.dart';

class QuoteOfDayWidget extends StatelessWidget {
  final QodState state;
  double height, width;
  QuoteOfDayWidget({
    Key key,
    @required this.state,
  }) : super(key: key);

  Widget _buildQODStatus() {
    return Container(
      margin: EdgeInsets.only(
        right: width * 0.05,
        bottom: width * 0.03,
      ),
      alignment: Alignment.bottomRight,
      child: Text(
        state.map(
          initialState: (_) => 'Loading...',
          qodLoading: (_) => 'Loading...',
          qodLoaded: (s) {
            return s.quoteOfDay.fold(
              (l) => l.message,
              (r) => 'by ${r.author}',
            );
          },
        ),
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildCardTitle() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Quote of the Day ',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            '"',
            style: GoogleFonts.passionOne(
              fontSize: 50.0,
              color: Colors.white,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuoteCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        state.map(
          initialState: (_) => () {},
          qodLoading: (_) => Navigator.of(context).pushNamed('/QODPage'),
          qodLoaded: (s) {
            s.quoteOfDay.fold(
              (l) {
                BlocProvider.of<QodBloc>(context).add(
                  QodEvent.getQOD(),
                );
                Navigator.of(context).pushNamed('/QODPage');
              },
              (r) => Navigator.of(context).pushNamed('/QODPage'),
            );
          },
        );
        // Navigator.of(context).pushNamed('/QODPage');
      },
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10.0),
        shadowColor: Color(colorList['blueGreen']).withOpacity(0.9),
        child: Container(
          height: height * 0.25,
          width: width * 0.9,
          decoration: BoxDecoration(
            color: Color(colorList['blueGreen']),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: <Widget>[
              _buildCardTitle(),
              _buildQODStatus(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return _buildQuoteCard(context);
  }
}
