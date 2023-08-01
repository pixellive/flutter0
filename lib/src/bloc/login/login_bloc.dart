import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter0/src/models/user.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    // Add
    on<LoginEventAdd>((event, emit) async {
      // execute somthing
      await Future.delayed(Duration(seconds: 1)); //1 seconds
      emit(state.copyWith(count: state.count + 1));
    });

    // Remove
    on<LoginEventRemove>((event, emit) async {
      // execute somthing
      await Future.delayed(Duration(seconds: 1)); //1 seconds
      emit(state.copyWith(count: state.count - 1));
    });

    // Authen
    on<LoginEventAuthen>((event, emit) async {
      // execute somthing
      if (event.payload.username == "admin" &&
          event.payload.password == "1234") {
        emit(state.copyWith(isAuthened: true));
      } else {
        emit(state.copyWith(isAuthened: false));
      }
    });
  }
}
