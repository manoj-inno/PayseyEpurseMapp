part of 'get_recipients_bloc.dart';

sealed class GetRecipientsEvent extends Equatable {
  const GetRecipientsEvent();

  @override
  List<Object> get props => [];
}

class LoadContacts extends GetRecipientsEvent {}

class LoadContactsOnly extends GetRecipientsEvent {}

class SearchContacts extends GetRecipientsEvent {
  final String query;

  const SearchContacts(this.query);

  @override
  List<Object> get props => [query];
}
