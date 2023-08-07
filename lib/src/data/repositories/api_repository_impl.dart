

import 'package:clean_arch/src/data/datasources/remote/news_api_service.dart';
import 'package:clean_arch/src/data/repositories/base_api_repository.dart';
import 'package:clean_arch/src/domain/models/requests/top_handling_request.dart';
import 'package:clean_arch/src/domain/models/responses/top_handling_response.dart';
import 'package:clean_arch/src/domain/repositories/api_repository.dart';
import 'package:clean_arch/src/util/resources/data_state.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository{
  final NewsApiService _newsApiService;

  ApiRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<TopHandlingNewsResponse>> getBreakingNewsArticles({required TopHandlingNewsRequest request}) {
    return getStateOf<TopHandlingNewsResponse>(request: ()=> _newsApiService.getHeadlinesNews(
      apiKey: request.apiKey,
      category: request.category,
      country:  request.country,
      page: request.page,
      pageSize: request.pageSize
    ));
  }

}