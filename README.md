
# twitter_auth_helper

A boilerplate for social signings

## Getting Started

This project is built using **Flutter version 3.19.2** stable.


### prerequisites

- Add the package from GitHub to your existing project.
  -1.  Begin by adding the package from [GitHub](https://github.com/) to your app.
2.  Navigate to [Twitter Developer](https://developer.twitter.com/) and create an app.
3.  Select your desired app under Project and Apps.
4.  In User Authentication Settings, click the Edit button under the Settings tab.
5.  Configure settings as shown in![Console](https://imgur.com/a/at2NxDT), enabling user email if necessary.
6.  Fill in-app information as demonstrated in [this image](https://imgur.com/a/NF0PC5H).
7.  Generate keys and tokens under Keys and Tokens, then copy both API and API secret keys from [here](https://imgur.com/a/tywdg6c).
8.  Open `android/app/src/main/AndroidManifest.xml` and add the provided [code](https://imgur.com/a/mcjES0q).
9.  Proceed to iOS, open `ios/Runner/Info.plist`, and insert the provided [code](https://imgur.com/cHEtL35).
10. That all now import the library and call 
11. `ResponseModel? responseModel = await SignInWithTwitterHelper()  
    .signInWithTwitter(  
    apiKey: 'xxxxxxxxxxxxxxxx',  
    apiSecretKey:  
    'xxxxxxxxxxxxx',  
    redirectURI: 'twittersdk://');`