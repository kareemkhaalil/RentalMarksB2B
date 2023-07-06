part of '../blocs/cubit/lang_cubit.dart';

abstract class LangState extends Equatable {
  const LangState();

  @override
  List<Object> get props => [];
}

class LangInitial extends LangState {}

class LangChanged extends LangState {}

class LangLoading extends LangState {}
