class ResultWrapper<T> {
  late T? data;
  late int? statusCode;
  late bool isSuccess;
  late String? message;

  ResultWrapper({Object? payload, this.statusCode, this.message}) {
    this.data = payload as T?;
    this.isSuccess = payload != null ? true : false;
  }

  @override
  String toString() {
    return 'ResultWrapper{data: $data, statusCode: $statusCode, isSuccess: $isSuccess, message: $message}';
  }
}
