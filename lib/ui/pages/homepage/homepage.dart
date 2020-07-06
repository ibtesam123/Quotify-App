import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/qod/qod_bloc.dart';
import '../../../blocs/saved_quotes/saved_quotes_bloc.dart';
import '../../../core/util.dart';
import '../savedquotes/savedquotespage.dart';
import 'widgets/category_tile.dart';
import 'widgets/quote_of_day_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  PageController pageController = PageController();
  double height, width;

  @override
  void initState() {
    super.initState();
    context.bloc<QodBloc>().add(QodEvent.getQOD());
    context.bloc<SavedQuotesBloc>().add(SavedQuotesEvent.getAllSavedQuotes());
  }

  @override
  void dispose() {
    context.bloc<QodBloc>().add(QodEvent.cancelRequest());
    super.dispose();
  }

  Widget _buildQuoteOfDay() {
    return BlocBuilder<QodBloc, QodState>(
      builder: (context, state) {
        return QuoteOfDayWidget(state: state);
      },
    );
  }

  Widget _buildCategoryList() {
    return Container(
      height: height * 0.6,
      width: width * 0.9,
      padding: EdgeInsets.only(bottom: height * 0.05),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: MediaQuery.of(context).size.width * 0.05,
          mainAxisSpacing: MediaQuery.of(context).size.width * 0.05,
        ),
        itemBuilder: (_, index) =>
            CategoryTile(category: getCategoryList()[index]),
        itemCount: getCategoryList().length,
      ),
    );
  }

  Widget _buildHome() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: height * 0.07),
          _buildQuoteOfDay(),
          SizedBox(height: height * 0.03),
          _buildCategoryList(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return PageView(
      key: PageStorageKey('homePageView'),
      controller: pageController,
      onPageChanged: (i) {
        this.setState(() => currentPage = i);
      },
      children: <Widget>[
        _buildHome(),
        SavedQuotesPage(),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentPage,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          title: Text('Saved Quotes'),
        ),
      ],
      onTap: (i) {
        pageController.animateToPage(
          i,
          duration: Duration(milliseconds: 700),
          curve: Curves.ease,
        );
        this.setState(() {
          currentPage = i;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
