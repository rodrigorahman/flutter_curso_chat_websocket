import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_failure.freezed.dart';

@freezed
abstract class RegisterFailure with _$RegisterFailure {
   factory RegisterFailure.server({String message}) = RegisterFailureServer;
   factory RegisterFailure.validation({List<String> errors}) = RegisterFailureValidation;
}