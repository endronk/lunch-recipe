import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunch_recipe/domain/core/failure.dart';

part 'resource.freezed.dart';

@freezed
abstract class Resource<T> with _$Resource {
  const factory Resource.loading() = Loading<T>;

  const factory Resource.success(T data) = Success<T>;

  const factory Resource.error(Failure failure) = Error<T>;
}
