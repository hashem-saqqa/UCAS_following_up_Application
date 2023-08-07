part of 'remote_articles_cubit.dart';

@immutable
abstract class RemoteArticlesState extends Equatable{
  final List<Article> articles;
  final bool noMoreData;
  final DioException? dioException;

  const RemoteArticlesState({this.articles = const [], this.noMoreData = false, this.dioException});

  @override
  List<Object?> get props => [articles,noMoreData,dioException];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}
class RemoteArticlesSuccess extends RemoteArticlesState{
  const RemoteArticlesSuccess({super.articles,super.noMoreData});
}
class RemoteArticlesFailed extends RemoteArticlesState{
  const RemoteArticlesFailed({super.dioException});
}
