enum ApiResponseCode {
  serverDown(-1),
  success(1),
  error(0),
  deviceMismatch(2),
  deviceExistsNewUser(-2),
  deviceExistsOldUser(-3);

  final int value;
  const ApiResponseCode(this.value);
}
