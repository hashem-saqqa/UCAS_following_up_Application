import 'package:bloc/bloc.dart';
import 'package:clean_arch/src/presentation/cubits/base/base_cubit.dart';
import 'package:clean_arch/src/util/resources/data_state.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../../util/constants/nums.dart';

import '../../domain/models/artical.dart';
import '../../domain/models/requests/top_handling_request.dart';
import '../../domain/repositories/api_repository.dart';

part 'remote_articles_state.dart';

class RemoteArticlesCubit extends BaseCubit<RemoteArticlesState,List<Article>> {
  final ApiRepository _apiRepository;
  RemoteArticlesCubit(this._apiRepository) : super(const RemoteArticlesLoading(),[]);
  int _page = 1;

  Future<void> getHeadlineNewsArticles() async {
    if(isBusy) return;

    await run(() async {
      final response = await _apiRepository.getBreakingNewsArticles(request: TopHandlingNewsRequest(page:_page));

      if(response is DataSuccess){
        final articles = response.data!.articles;
        final noMoreData = articles!.length < defaultPageSize;
        data.addAll(articles);
        _page++;
        emit(RemoteArticlesSuccess(articles: data,noMoreData: noMoreData));
      }else{
        emit(RemoteArticlesFailed(dioException: response.dioError));
      }
    });
  }
}
