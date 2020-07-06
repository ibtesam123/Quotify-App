import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/qod/qod_bloc.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/no_internet_widget.dart';
import 'widgets/qod_widget.dart';

class QODPage extends StatelessWidget {
  Widget _buildBody() {
    return BlocBuilder<QodBloc, QodState>(
      builder: (context, state) {
        return Center(
          child: state.map(
            initialState: (_) => Container(),
            qodLoading: (_) =>
                LoadingWidget(message: 'Loading Quote of the Day'),
            qodLoaded: (s) {
              return s.quoteOfDay.fold(
                (l) => NoInternetWidget(),
                (r) => QODWidget(quote: r),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}
