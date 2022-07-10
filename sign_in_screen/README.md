# Instructions on Mac
## Install Dependencies
brew install awscli
brew install node
sudo npm install -g @aws-amplify/cli
brew install jq
sudo gem install cocoapods
## Install Flutter Dependencies
cd sign_in_screen
flutter pub get
amplify init (for authentication select "AWS profile" and make a new user)
## Resources
https://aws.amazon.com/blogs/mobile/amplify-cli-adds-scaffolding-support-for-amplify-apps-and-authoring-plugins/
