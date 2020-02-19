import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../model/movie_model.dart';
import '../repository/repository.dart';

class MovieEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class FetchMovie extends MovieEvent{
  @override
  // TODO: implement props
  List<Object> get props => [];
  
}

class MovieState extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class MovieIsLoading extends MovieState{

}

class MovieIsLoaded extends MovieState{
  final _movie;

  MovieIsLoaded(this._movie);

  MovieModel get getMovie => _movie;

  @override
  // TODO: implement props
  List<Object> get props => [_movie];
}

class MovieBloc extends Bloc<MovieEvent, MovieState>{

  Repository movieRepo;
  MovieBloc(this.movieRepo);

  @override
  // TODO: implement initialState
  MovieState get initialState => MovieIsLoading();

  @override
  Stream<MovieState> mapEventToState(MovieEvent event) async*{
    if(event is FetchMovie){
      yield MovieIsLoading();
      try{
        MovieModel movie = await movieRepo.fetchMovie();
        yield MovieIsLoaded(movie);
      }catch(_){
        print(_);
        yield MovieIsLoading();
      }
    }
    // yield MovieIsLoading();

  }

}