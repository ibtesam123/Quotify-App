import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/quotes/quotes_bloc.dart';
import '../../../../domain/model/quote_model.dart';

class QuoteActions extends StatelessWidget {
  final PageController controller;
  final List<QuoteModel> quotes;
  double height, width;

  QuoteActions({
    Key key,
    @required this.controller,
    @required this.quotes,
  }) : super(key: key);

  Widget _buildPreviousQuoteButton() {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white),
      onPressed: () {
        if (quotes != null && quotes.length > 0) {
          controller.previousPage(
            duration: Duration(milliseconds: 700),
            curve: Curves.ease,
          );
        }
      },
    );
  }

  Widget _buildNextQuoteButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_forward, color: Colors.white),
      onPressed: () {
        if (quotes != null && quotes.length > 0) {
          if (controller.page.toInt() == quotes.length - 1) {
            BlocProvider.of<QuotesBloc>(context)
                .add(QuotesEvent.getQuotesByCategory(quotes[0].category));
          } else {
            controller.nextPage(
              duration: Duration(milliseconds: 700),
              curve: Curves.ease,
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width * 1,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildPreviousQuoteButton(),
          _buildNextQuoteButton(context),
        ],
      ),
    );
  }
}
