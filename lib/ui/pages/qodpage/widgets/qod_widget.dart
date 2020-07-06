import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../domain/model/quote_model.dart';

class QODWidget extends StatelessWidget {
  final QuoteModel quote;
  double height, width;

  QODWidget({
    Key key,
    @required this.quote,
  }) : super(key: key);

  Widget _buildQuoteCategory() {
    return Text(
      'Quote of the Day',
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 24.0,
      ),
    );
  }

  Widget _buildQuote() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          AutoSizeText(
            quote.quote,
            style: GoogleFonts.ubuntu(
              fontSize: 34.0,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 5,
          ),
          SizedBox(height: 50.0),
          Text(
            quote.author,
            style: GoogleFonts.poppins(
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }

  Widget _buildContentCopy(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(
                ClipboardData(text: quote.quote + ' - ' + quote.author))
            .then((_) {
          Flushbar(
            message: 'Copied to Clipboard',
            isDismissible: true,
            icon: Icon(
              Icons.info_outline,
              color: Colors.blue,
            ),
            duration: Duration(seconds: 3),
            forwardAnimationCurve: Curves.easeIn,
            reverseAnimationCurve: Curves.easeOut,
            leftBarIndicatorColor: Colors.blue,
            onTap: (fb) {
              fb.dismiss();
            },
          )..show(context);
        });
      },
      child: Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.all(15.0),
        child: Icon(
          Icons.content_copy,
          size: 25.0,
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget _buildQuoteCard(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        height: height * 0.6,
        width: width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            _buildQuote(),
            _buildContentCopy(context),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      color: Color(quote.colorCode),
      child: Column(
        children: <Widget>[
          SizedBox(height: height * 0.08),
          _buildQuoteCategory(),
          SizedBox(height: height * 0.1),
          _buildQuoteCard(context),
        ],
      ),
    );
  }
}
