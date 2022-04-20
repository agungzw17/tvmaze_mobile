part of 'show_bloc.dart';

abstract class ShowState extends Equatable {
  const ShowState();
}

class ShowInitial extends ShowState {
  @override
  List<Object?> get props => [];
}

class ShowFailLoaded extends ShowState {
  @override
  List<Object?> get props => [];
}

class ShowLoaded extends ShowState {
  final List<ShowModel>? listShowModel;

  const ShowLoaded({this.listShowModel});

  @override
  List<Object?> get props => [listShowModel];
}
