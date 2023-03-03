class ExceptionModel {
  final String message;
  final Map<String, dynamic>? payload;
  final bool isValidate;

  ExceptionModel(this.message, {this.isValidate = false, this.payload});
}
