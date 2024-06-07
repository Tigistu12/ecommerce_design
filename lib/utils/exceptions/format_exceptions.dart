// custom exception class to handle various format related errors.
class TFormatException implements Exception{
  // the associated error message.
  final String message;

  // default constructor with the a generic error message.
  TFormatException([this.message = 'An unexpected format error occured. Please check your inpur.']);

  // create a format exception from a specific error message.
  factory TFormatException.fromMessage(String message){
    return TFormatException(message);
  }

  // Get the corresponding error message.
  String get formattedMessage =>message;

  // Create a format exception from a specific error code.
  factory TFormatException.fromCode(String code){
    switch (code){
      case 'invalid-email-address':
      return TFormatException('The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number-format':
      return TFormatException('The provided phone number format is invalid. Please enter a valid number.');
      case 'invalid-date-format':
      return TFormatException('The date format is invalid. Please enter a valid date.');
      case 'invalid-url-format':
      return TFormatException('The URL format is invalid. Please enter a valid URL.');
      case 'invalid-credit-card-format':
      return TFormatException('The credit card format is invalid. Please enter a valid credit card number.');
      case 'invalid-numberic-format':
      return TFormatException('The input should be a valid numeric format.');

      default:
      return TFormatException('unknown error occured');
    }
  }
}