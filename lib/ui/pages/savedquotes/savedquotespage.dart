import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/saved_quotes/saved_quotes_bloc.dart';
import 'widgets/saved_quote.dart';

class SavedQuotesPage extends StatelessWidget {
  Widget _buildBody() {
    return BlocBuilder<SavedQuotesBloc, SavedQuotesState>(
      builder: (context, state) {
        return state.map(
          initialState: (_) => Container(),
          loading: (_) => Center(child: CircularProgressIndicator()),
          savedLoaded: (s) {
            return s.savedQuotes.fold(
              (l) => Center(
                child: Text(l.message),
              ),
              (r) => ListView.builder(
                itemBuilder: (_, i) => SavedQuote(quote: r[i]),
                itemCount: r.length,
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
