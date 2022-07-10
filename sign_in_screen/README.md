# Instructions for Firebase on Mac
## Install Dependencies
brew install awscli
brew install node
sudo npm install -g firebase-tools
sudo npm install -g firebaseui
## Install Flutter Dependencies
cd sign_in_screen
flutter pub get
dart pub global activate flutterfire_cli
## Set Up Firebase
firebase login
firebase init (select Realtime Database)
flutterfire configure --project=[database name]
## Resources
https://firebase.google.com/docs/cli?authuser=0&hl=en#mac-linux-npm
https://firebase.google.com/docs/flutter/setup?authuser=0&hl=en&platform=android#available-plugins
https://github.com/firebase/flutterfire/tree/master/packages
https://github.com/firebase/flutterfire/blob/master/packages/flutterfire_ui/doc/auth.md
