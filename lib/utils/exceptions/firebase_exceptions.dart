// custom exception class to handle various firebase-related errors
class TFirebaseException implements Exception{
  // the error code associated with the exception
final String code;

// constructor that takes an error code.
TFirebaseException(this.code);

// get the corresponding error message based on the error code.
String get message{
  switch(code){
    case 'unknown':
    return 'An unknown Firebase error occurred. Please try again';
    case 'invalid-custom-token':
    return 'The custom token format is incorrect. Please check your custom token';
    case 'custom-token-mismatch':
    return 'The custom token corresponds to a different audience';
    case 'user-disabled':
    return 'The user account has been disabled';
    case 'user-not-found':
    return 'No user found for the given email or UID';
    case 'invalid-email':
    return 'The email address provided is invalid. Please enter a valid email';
    case 'email-already-in-use':
    return 'The email account is already registered. Please use a different email.';
    case 'wrong-password':
    return 'Incorrect password. Please check your password and try again.';
    case 'weak-password':
    return 'The password is too weak. Please choose a stronger passwrod.';
    case 'provider-already-linked':
    return 'The account is already linked with another provider.';
    case 'operation-not allowed':
    return 'This operation is not allowed. Contact support for assistance';
    case 'invalid-credential':
    return 'The supplied credential is malformed or has expired.';
    case 'invalid-verification-code':
    return 'Invalid verification code. Please enter a valid code';
    case 'invalid-verification-id':
    return 'Invalid verification ID. Please request a new verification code.';
    case 'captcha-check-error':
    return 'The reCAPTCHA response is invalid. Please try again.';
    case 'app-not-authorized':
    return 'The app is not authorized to use Firebase Authentication with the provided API key';
    case 'keychain-error':
    return 'A keychain error occurred. Please check the keychain and try again.';
    case 'internal-error':
    return 'An internal authentication error occured. Please try again later.';
    case 'invalid-app-credential':
    return 'The app credential is invalid.';
    case 'user-mismatch':
    return 'The supplied credential do not correspond to the previously signed-in user.';
    case 'requires-recent-login':
    return 'This operation is sensitive and requires a recent authentication. Please login again.';
    case 'quota-exceeded':
    return 'Quota exceeded. Please try again later.';
    case 'account-exists-with-different-credential':
    return 'An account already exists with the same email but different sing-in credentials.';
    case 'missing-iframe-start':
    return 'The email template is missing the iframe start tage';
    case 'missing-iframe-end':
    return 'the email template is missing the iframe end tag.';
    case 'missing-iframe-src':
    return 'The email template is missing the iframe src attribute';
    case 'auth-domain-config-required':
    return 'The authDomain Configuration is required for the action code verification link';
    case 'missing-app-credential':
    return 'The app credential is missing. Please provide valid app credential';
    case 'session-cookie-expired':
    return 'The Firebase session cookie has expired. Please sign in again.';
    case 'uid-already-exists':
    return 'The provided user ID is alrady in user by another user.';
    case 'web-storage-unsupported':
    return 'Web storage is not supported or disabled.';
    case 'app-deleted':
    return 'This instance of FirebaesApp has bee deleted.';
    case 'user-token-mismatch':
    return 'The provided user\'s token has a mismatch with the authenticated user\'s user ID.';
    case 'invalid-message-payload':
    return 'The email template verification payload is invalid.';
    case 'invalid-sender':
    return 'The email template sender is invalid. Please verify the sender\'s email.';
    case 'invalid-recipient-email':
    return 'The recipient email address is invalid. Please provide a valid recipient email';
    case 'missing-action-code':
    return 'The action code is missing. Please provide a valid code.';
    case 'user-token-expired':
    return 'The user\'s token has expired, and authentication is required. Please sign in again.';
    case 'INVALID_LOGIN_CREDENTIALS':
    return 'Invalid login credentials.';
    case 'expired-action-code':
    return 'The action code has expired. Please request a new action code.';
    case 'invalid-action-code':
    return 'The action code is invalid. Please check the code and try again.';
    case 'credential-already-in-use':
    return 'This credential is already associated with a different user account';
    default:
    return 'An unexpected Firebase error occurred. Please try again.';
  }
}
}