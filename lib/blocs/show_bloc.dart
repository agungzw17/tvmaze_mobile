import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tvmaze_mobile/models/models.dart';
import 'package:tvmaze_mobile/services/services.dart';

part 'show_event.dart';
part 'show_state.dart';

class ShowBloc extends Bloc<ShowEvent, ShowState> {
  ShowBloc() : super(ShowInitial()) {
    on<FetchShow>((event, emit) async{
      List<ShowModel> shows = await ShowServices.getListPokemon();

      emit(ShowLoaded(listShowModel: shows));
    });
  }
}