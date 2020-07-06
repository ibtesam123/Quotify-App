import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../blocs/quotes/quotes_bloc.dart';
import '../../../blocs/saved_quotes/saved_quotes_bloc.dart';
import '../../../core/error/failures.dart';
import '../../../domain/model/quote_model.dart';
import '../../widgets/no_internet_widget.dart';
import '../../widgets/loading_widget.dart';
import 'widgets/quote_actions.dart';
import 'widgets/quote_widget.dart';

class QuotesPage extends StatelessWidget {
  final PageController _controller = PageController();
  Widget _buildQuotePageView(
    List<QuoteModel> quotes,
    List<QuoteModel> savedQuotes,
  ) {
    return PageView.builder(
      key: PageStorageKey('pageStorageKey'),
      itemBuilder: (_, i) => Container(
        color: Color(
          quotes != null && quotes.length > 0
              ? quotes[i].colorCode
              : 0xffffffff,
        ),
        child: QuoteWidget(
          quote: quotes[i],
          savedQuotes: savedQuotes,
        ),
      ),
      itemCount: quotes.length,
      physics: NeverScrollableScrollPhysics(),
      controller: _controller,
    );
  }

  Widget _buildQuotes() {
    return BlocBuilder<SavedQuotesBloc, SavedQuotesState>(
      builder: (context, savedState) {
        return BlocBuilder<QuotesBloc, QuotesState>(
          builder: (context, quoteState) {
            return savedState.map(
              initialState: (_) => Container(),
              loading: (_) =>
                  Center(child: LoadingWidget(message: 'Loading Quotes')),
              savedLoaded: (savedState) {
                return quoteState.map(
                  initialState: (_) => Container(),
                  loading: (_) =>
                      Center(child: LoadingWidget(message: 'Loading Quotes')),
                  quotesLoaded: (quoteState) {
                    return quoteState.quotes.fold(
                      (l) => (l is NoInternetConnectionFailure)
                          ? NoInternetWidget()
                          : Center(
                              child: Text(
                                l.message,
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                      (quotesRight) {
                        return savedState.savedQuotes.fold(
                          (l) => _buildQuotePageView(
                            quotesRight,
                            List<QuoteModel>(),
                          ),
                          (savedRight) => _buildQuotePageView(
                            quotesRight,
                            savedRight,
                          ),
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildQuoteActions() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BlocBuilder<QuotesBloc, QuotesState>(
        builder: (context, state) {
          return state.map(
            initialState: (_) => QuoteActions(
              controller: null,
              quotes: null,
            ),
            loading: (_) => QuoteActions(
              controller: null,
              quotes: null,
            ),
            quotesLoaded: (s) {
              List<QuoteModel> quotes =
                  s.quotes.getOrElse(() => List<QuoteModel>());
              return QuoteActions(
                controller: _controller,
                quotes: quotes,
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        _buildQuotes(),
        _buildQuoteActions(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody());
  }
}
