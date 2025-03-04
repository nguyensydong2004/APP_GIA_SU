import 'package:app_education/services/font_service.dart';
import 'package:bloc/bloc.dart';
import 'package:app_education/bloc/font/font_event.dart';
import 'package:app_education/bloc/font/font_state.dart';
import 'package:get_storage/get_storage.dart';

class FontBloc extends Bloc<FontEvent, FontState>{
  final GetStorage _storage = GetStorage();
  FontBloc() : super(FontState(
      fontFamily: FontService.currentFontFamily,
      fontScale: FontService.currentFontScale,
  )){
    on<UpdateFontScale>(_onUpdateFontScale);
    on<UpdateFontFamily>(_onUpdateFontFamily);
  }

  void _onUpdateFontScale(UpdateFontScale event, Emitter<FontState> emit)async{
    await FontService.setFontScale(event.scale);
    emit(state.copyWith(fontScale: event.scale));
  }
  void _onUpdateFontFamily(UpdateFontFamily event, Emitter<FontState> emit)async{
    await FontService.setFontFamily(event.family);
    emit(state.copyWith(fontFamily: event.family));
  }
}