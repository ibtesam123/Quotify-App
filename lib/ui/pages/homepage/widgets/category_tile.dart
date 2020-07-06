import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../blocs/quotes/quotes_bloc.dart';
import '../../../../core/extensions.dart';
import '../../../../core/util.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  CategoryTile({
    Key key,
    @required this.category,
  }) : super(key: key);

  Widget _buildCategoryIcon(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            catColorList[category]['image'],
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildCategoryText() {
    return Text(
      category.capitalize(),
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 20.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<QuotesBloc>(context)
            .add(QuotesEvent.getQuotesByCategory(category));
        Navigator.of(context).pushNamed('/QuotesPage');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(catColorList[category]['color']),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildCategoryIcon(context),
            SizedBox(height: 15.0),
            _buildCategoryText(),
          ],
        ),
      ),
    );
  }
}
