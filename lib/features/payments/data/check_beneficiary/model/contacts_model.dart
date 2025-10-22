import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  final String name;
  final String number;

  const Contact({required this.name, required this.number});

  @override
  List<Object?> get props => [name, number];
}
