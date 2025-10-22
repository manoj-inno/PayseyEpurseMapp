part of 'face_login_cubit.dart';

abstract class FaceLoginState extends Equatable {
  final bool isFaceLoginEnabled;
  final bool isLoading;

  const FaceLoginState({
    required this.isFaceLoginEnabled,
    this.isLoading = false,
  });

  @override
  List<Object> get props => [isFaceLoginEnabled, isLoading];
}

class FaceLoginLoading extends FaceLoginState {
  const FaceLoginLoading() : super(isFaceLoginEnabled: false, isLoading: true);
}

class FaceLoginEnabled extends FaceLoginState {
  const FaceLoginEnabled() : super(isFaceLoginEnabled: true);
}

class FaceLoginDisabled extends FaceLoginState {
  const FaceLoginDisabled() : super(isFaceLoginEnabled: false);
}
