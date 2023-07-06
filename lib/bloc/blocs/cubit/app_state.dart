part of 'app_cubit.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppInitial extends AppState {}

class AppLoading extends AppState {}

class AppChanged extends AppState {}

class HomeScreen extends AppState {}

class ProductsScreen extends AppState {}

class RequestsScreen extends AppState {}

class MessagesScreen extends AppState {}

class InsightsScreen extends AppState {}
