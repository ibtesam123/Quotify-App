import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../blocs/saved_quotes/saved_quotes_bloc.dart';

import '../../../../domain/model/quote_model.dart';

class SavedQuote extends StatelessWidget {
  final QuoteModel quote;
  double height, width;

  SavedQuote({
    Key key,
    @required this.quote,
  }) : super(key: key);

  Widget _buildContent() {
    return Container(
      padding: EdgeInsets.all(width * 0.06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            quote.quote,
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: height * 0.01),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(left: width * 0.1),
            child: Text(
              '- ${quote.author}',
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuoteTile(BuildContext context) {
    return Slidable(
      child: _buildContent(),
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Remove',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => BlocProvider.of<SavedQuotesBloc>(context)
              .add(SavedQuotesEvent.removeQuoteFromCache(quote)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.01,
      ),
      color: Color(quote.colorCode),
      child: _buildQuoteTile(context),
    );
  }
}
