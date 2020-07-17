import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_failures.freezed.dart';

@freezed
abstract class GroupFailures with _$GroupFailures {
   factory GroupFailures.serverError({String message}) = _GroupFailures;
}