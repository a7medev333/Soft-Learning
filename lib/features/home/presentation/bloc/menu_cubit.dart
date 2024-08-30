import 'package:bloc/bloc.dart';
import 'package:e_learing_app/core/enums/tabs.dart';
import 'package:meta/meta.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(HomeMenu());

  void home() => emit(HomeMenu());

  void user() => emit(UserMenu());

  void favorite() => emit(FavoriteMenu());

  void laptop() => emit(LaptopMenu());




}
