import 'package:bloc/bloc.dart';
import 'package:cubit204/cubits/users_state.dart';
import '../repository/users_repo.dart';
class UsersCubit extends Cubit<UsersState> {
  final UsersRepo usersRepo;
  UsersCubit(this.usersRepo) : super(UsersStateLoading());

  ifUsersStateLoadedFun()async{
    emit(UsersStateLoading());
    try{
    var usersData = await usersRepo.fetchUsersDataRepo();
    emit(UsersStateLoaded(usersData));
    }catch (e){
      emit(UsersStateError(e.toString()));
    }

  }

}
