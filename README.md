Flutter Commands

Open terminal <br/>
Type: vim .bash_profile <br/>
Press I (I for insert) <br/>
Than paste this :  export PATH="$PATH: /Users/apple/desktop/flu/flutter/bin" <br/>
Press esc key <br/>
Than type :wq! (For saving) <br/>

—>> git clone https://github.com/flutter/flutter.git -b stable <br/>
—>> flutter precache <br/>

—>> flutter create my_app <br/>
—>> cd my_app <br/>
—>> flutter analyze <br/>
—>> flutter test <br/>
—>> flutter --version <br/>
—>> flutter doctor --android-licenses <br/>
—>> which flutter <br/>
—>> which flutter dart <br/>

Open vs code within project directory <br/>
—>> code . <br/>

VS Code Terminal commands <br/>
—>> flutter doctor <br/>
—>> flutter run <br/>
—>> open -a simulator <br/>

------------------------------------------------------------------------------<br/>
Cocoa pods upgrade ruby error InCase of flutter doctor: <br/>
When upgrading XCode you need to install the Command-Line Tools and additionally accept the terms and conditions: <br/>

Open Terminal <br/>
—>> xcode-select --install <br/>
—>> sudo xcode-select -s /Applications/Xcode.app/Contents/Developer <br/>
—>> sudo xcodebuild -license accept <br/>
—>> curl -L https://get.rvm.io | bash -s stable <br/>

Close and Reopen Terminal <br/>
RVM command not found : <br/>
————————<br/>
—>> source ~/.rvm/scripts/rvm <br/>
—>> type rvm | head -n 1 <br/>
If the output is yes rvm is a function, it needs to be source ~/.rvm/scripts/rvmadded to the ~/.bash_profilefile. <br/>

—>> git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow <br/>
—>> brew update <br/>
———————<br/>
—>> rvm install ruby-2.6<br/>
—>> sudo gem install cocoapods<br/>
——————<br/>


Shortcut to make widget code by deafult : <br/>
------------------------------------------
1- To create Stateless Widget just type stles <br/>
2- To create Statefull Widget just type stful <br/>

Difference Btw MaterialApp/Material : 
------------------------------------------
1- MaterialApp is a widget that introduces many interesting tools such as Navigator or Theme to help you develop your app.
2- Material is, on the other hand, a widget used to define a UI element respecting Material rules. It defines what elevation is, shape, and stuff. Then reused by many material widgets such as Appbar or Card or FloatingButton.

Scaffold :
---------
A Scaffold Widget provides a framework which implements the basic material design visual layout structure of the flutter app. It provides APIs for showing drawers, snack bars and bottom sheets.
This widget is able to occupy the whole device screen.
