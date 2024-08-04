import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'gemini_app_bloc_event.dart';
part 'gemini_app_bloc_state.dart';

class GeminiAppBlocBloc extends Bloc<GeminiAppBlocEvent, GeminiAppBlocState> {
  GeminiAppBlocBloc() : super(GeminiAppBlocInitial()) {
    on<GeminiAppBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
