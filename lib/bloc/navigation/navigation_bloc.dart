import 'package:app_education/bloc/navigation/navigation_event.dart';
import 'package:app_education/bloc/navigation/navigation_state.dart';
import 'package:bloc/bloc.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState(0)) {
    on<NavigateToTab>((event, emit) {
      emit(NavigationState(event.index));
    });
  }
}
