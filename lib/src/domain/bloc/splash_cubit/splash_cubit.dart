import 'package:chat_app/src/domain/bloc/splash_cubit/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {

  SplashCubit() : super(SplashInitState());

}