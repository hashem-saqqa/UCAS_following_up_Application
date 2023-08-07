import 'package:dio/dio.dart';

abstract class DataState<T>{
  final T? data;
  final DioException? dioError;
  const DataState({this.data,this.dioError});

}

class DataSuccess<T> extends DataState<T>{
  const DataSuccess(T data):super(data: data);
}
class DataFailed<T> extends DataState<T>{
  const DataFailed(DioException dioException) : super(dioError: dioException);
}