import 'package:equatable/equatable.dart';

import '../Models/users_model.dart';

abstract class UsersState extends Equatable{
  @override
  List<Object> get props => [];

}

// class InitialState extends UsersState{}
class UsersStateLoading extends UsersState{}

class UsersStateLoaded extends UsersState{
  final List<UsersModel> usersModel;
        UsersStateLoaded(this.usersModel);

  @override
  // TODO: implement props
  List<Object> get props => [usersModel];
}

class UsersStateError extends UsersState{
  final String errorMessage;

  UsersStateError(this.errorMessage);

  @override
  // TODO: implement props
  List<Object> get props => [errorMessage];

}