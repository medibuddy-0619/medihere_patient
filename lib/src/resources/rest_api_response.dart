class RestApiResponse<T> {
  Status status;
  String message;
  T data;

  RestApiResponse.http(this.message, this.data) : status = Status.HTTP;
  RestApiResponse.error(this.message, this.data) : status = Status.ERROR;
  RestApiResponse.success(this.message, this.data) : status = Status.SUCCESS;
  RestApiResponse.valid(this.message, this.data) : status = Status.VALID;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}

enum Status { HTTP, SUCCESS, ERROR, VALID }
