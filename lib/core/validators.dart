import 'package:dartz/dartz.dart';

import '../domain/model/quote_model.dart';
import 'error/failures.dart';
import 'util.dart';

Either<Failure, QuoteModel> validateQuote(QuoteModel e) {
  if (e == null) return Left(ValueFailure('Entity is null'));
  if (e.id == null) return Left(ValueFailure('Id is null'));
  if (e.category == null) return Left(ValueFailure('Category is null'));
  if (e.quote == null) return Left(ValueFailure('Quote is null'));
  if (e.author == null) return Left(ValueFailure('Author is null'));
  if (e.image == null) return Left(ValueFailure('Image is null'));

  if (e.id is! int) return Left(ValueFailure('Id is not integer'));

  if (!getCategoryList().contains(e.category)) {
    return Left(ValueFailure('Invalid category'));
  }
  if (e.image.length < 4) return Left(ValueFailure('Image is invalid'));

  return Right(e);
}
