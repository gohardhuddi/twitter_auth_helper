part of twitter_auth_helper;

class SignInWithTwitterHelper {
  var _message, _user;
  Future<ResponseModel?> signInWithTwitter(
      {required String apiKey,
      required String apiSecretKey,
      required String redirectURI}) async {
    final twitterLogin = TwitterLogin(
      // Consumer API keys
      apiKey: apiKey,
      // Consumer API Secret keys
      apiSecretKey: apiSecretKey,
      // Registered Callback URLs in TwitterApp
      // Android is a deeplink
      // iOS is a URLScheme
      redirectURI: redirectURI,
    );
    final authResult = await twitterLogin.login();
    switch (authResult.status) {
      case TwitterLoginStatus.loggedIn:
        _message = "Logged in successfully";
        _user = authResult.user;
        break;
      case TwitterLoginStatus.cancelledByUser:
        _message = "Login process cancelled by user";
        _user = null;
        break;
      case TwitterLoginStatus.error:
        _message = TwitterLoginStatus.error.toString();
        _user = null;
        break;
      case null:
      // TODO: Handle this case.
    }
    return ResponseModel(user: _user, message: _message);
  }
}
