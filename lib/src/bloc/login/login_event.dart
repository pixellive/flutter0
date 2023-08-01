part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginEventAdd extends LoginEvent {}

class LoginEventRemove extends LoginEvent {}

class LoginEventAuthen extends LoginEvent {
  final User payload;
  LoginEventAuthen(this.payload);
}
