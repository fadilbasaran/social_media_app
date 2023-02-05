import 'package:fpdart/fpdart.dart';
import 'package:social_media_app/core/constants/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FutureVoid = FutureEither<void>;
