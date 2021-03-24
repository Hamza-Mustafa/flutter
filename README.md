Flutter Commands

export PATH="$PATH: /Users/hamzamustafa/desktop/flu/flutter/bin"

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
