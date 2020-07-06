import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/qod/qod_bloc.dart';
import 'blocs/quotes/quotes_bloc.dart';
import 'blocs/saved_quotes/saved_quotes_bloc.dart';
import 'injection.dart';
import 'ui/pages/homepage/homepage.dart';
import 'ui/pages/qodpage/qodpage.dart';
import 'ui/pages/quotespage/quotes_page.dart';
import 'ui/pages/splashpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QodBloc>(
          create: (_) => s1<QodBloc>(),
        ),
        BlocProvider<QuotesBloc>(
          create: (_) => s1<QuotesBloc>(),
        ),
        BlocProvider<SavedQuotesBloc>(
          create: (_) => s1<SavedQuotesBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child,
          );
        },
        routes: {
          '/': (context) => SplashPage(),
          '/HomePage': (context) => HomePage(),
          '/QuotesPage': (context) => QuotesPage(),
          '/QODPage': (context) => QODPage(),
        },
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
