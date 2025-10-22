import 'package:equatable/equatable.dart';

class RefreshTokenModel extends Equatable {
  final String accessToken;
  final String expiryTime;

  const RefreshTokenModel({
    required this.accessToken,
    required this.expiryTime,
  });

  factory RefreshTokenModel.fromJson(Map<String, dynamic> json) {
    return RefreshTokenModel(
      accessToken: json['refresh_token'],
      expiryTime: json['expiry_time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'jwt_token': accessToken,
      'expiry_time': expiryTime,
    };
  }

  @override
  List<Object?> get props => [accessToken, expiryTime];
}
