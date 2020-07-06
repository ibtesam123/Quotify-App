import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../blocs/saved_quotes/saved_quotes_bloc.dart';
import '../../../../core/extensions.dart';
import '../../../../domain/model/quote_model.dart';

class QuoteWidget extends StatelessWidget {
  final QuoteModel quote;
  final List<QuoteModel> savedQuotes;
  BuildContext context;
  double height, width;

  QuoteWidget({
    Key key,
    @required this.quote,
    @required this.savedQuotes,
  }) : super(key: key);

  Widget _buildQuoteCategory() {
    return Text(
      quote.category.capitalize(),
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 24.0,
      ),
    );
  }

  Widget _buildBookmark() {
    return GestureDetector(
      onTap: () {
        if (savedQuotes.indexWhere((element) => element.id == quote.id) == -1) {
          BlocProvider.of<SavedQuotesBloc>(context)
              .add(SavedQuotesEvent.saveQuoteToCache(quote));

          Flushbar(
            message: 'Quote Saved',
            isDismissible: true,
            icon: Icon(
              Icons.check_circle_outline,
              color: Colors.green,
            ),
            duration: Duration(seconds: 3),
            forwardAnimationCurve: Curves.easeIn,
            reverseAnimationCurve: Curves.easeOut,
            leftBarIndicatorColor: Colors.green,
            onTap: (fb) {
              fb.dismiss();
            },
          )..show(context);
        } else {
          BlocProvider.of<SavedQuotesBloc>(context).add(
            SavedQuotesEvent.removeQuoteFromCache(quote),
          );

          Flushbar(
            message: 'Quote Removed',
            isDismissible: true,
            icon: Icon(
              Icons.delete_outline,
              color: Colors.red,
            ),
            duration: Duration(seconds: 3),
            forwardAnimationCurve: Curves.easeIn,
            reverseAnimationCurve: Curves.easeOut,
            leftBarIndicatorColor: Colors.red,
            onTap: (fb) {
              fb.dismiss();
            },
          )..show(context);
        }
      },
      child: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(10.0),
        child: savedQuotes.indexWhere((element) => element.id == quote.id) == -1
            ? Icon(
                Icons.star_border,
                size: 35.0,
                color: Colors.black45,
              )
            : Icon(
                Icons.star,
                size: 35.0,
                color: Colors.black45,
              ),
      ),
    );
  }

  Widget _buildContentCopy() {
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

  Widget _buildQuoteCard() {
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
            _buildBookmark(),
            _buildContentCopy(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        SizedBox(height: height * 0.08),
        _buildQuoteCategory(),
        SizedBox(height: height * 0.1),
        _buildQuoteCard(),
      ],
    );
  }
}
