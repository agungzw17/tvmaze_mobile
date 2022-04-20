part of 'show_bloc.dart';

abstract class ShowEvent extends Equatable {
  const ShowEvent();
}

class FetchShow extends ShowEvent {
  @override
  List<Object?> get props => [];
}
