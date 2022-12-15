import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocState.initial()) {
    on<CounterBlocEvent>((event, emit) {
      emit(state.copyWith(count: state.count * 10));
    });

    on<IncrementCountEvent>(
      (event, emit) {
        emit(state.copyWith(count: state.count + 1));
      },
    );

    on<DecrementCountEvent>(decreaseCount);
  }
  void decreaseCount(
      DecrementCountEvent event, Emitter<CounterBlocState> emit) {
    emit(state.copyWith(count: state.count - 1));
  }
}
