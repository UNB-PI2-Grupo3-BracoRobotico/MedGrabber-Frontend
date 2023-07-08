import 'package:grabber/core/failures.dart';

class FirebaseUserNotFoundedFailure implements Failure {
  @override
  String toString() {
    return 'Firebase user not founded!';
  }

  @override
  String? get message => 'Firebase user not found!';

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}
