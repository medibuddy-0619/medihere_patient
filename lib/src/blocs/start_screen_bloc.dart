import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

class StartScreenBloc extends Bloc{
  StartScreenBloc(initialState) : super(initialState);

  @override
  int get initalState => 0;

  @override
  Stream mapEventToState(event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}