part of 'menu_cubit.dart';

@immutable
sealed class MenuState {
  final TabMenu tab;

  MenuState({required this.tab});
}

final class HomeMenu extends MenuState {
  HomeMenu() : super(tab: TabMenu.HOME);

}

final class FavoriteMenu extends MenuState{
  FavoriteMenu() : super(tab: TabMenu.FAVORITE);
}

final class UserMenu extends MenuState {
  UserMenu() : super(tab: TabMenu.PROFILE);
}

final class LaptopMenu extends MenuState{
  LaptopMenu() : super(tab: TabMenu.LAPTOP);
}

