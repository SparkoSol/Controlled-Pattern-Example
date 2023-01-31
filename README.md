# Controlled Pattern Example

A Flutter project implementing the controlled state management and component pattern

## Getting Started

If you want to run this application you should have Flutter installed on your pc.

Clone this repo and simply run in emulator or real device.

## ControlledWidget

The Controlled widget uses the Listenable, ValueListenable, ValueNotifier, and ChangeNotifier. We can use the Controlled widget by binding a widget with the controller, the controller should contain the business logic and state changes. The controller should extend a Listenable (ChangeNotifier, ValueNotifier, etc). The widget will rebuild when the controller triggers an event (notifyListener).

In the internal implementation of ControlledWidget, ControlledWidget is an abstract class that should extend a StatefulWidget. The main logic for rebuilding the widget is in the ControlledStateMixin which is a Mixin on the State. In this mixin, a listener gets attached to the controller and every time the controller notifies an event, the listener rebuilds the state. You can read the internal implementation of ControlledWidget in this [link](https://github.com/SparkoSol/reusables/blob/main/lib/widgets/controlled_widget.dart).

The provider uses the ChangeNotifier, so we made it simpler than Provider and Getx.
Bloc pattern gives separation of concerns, we can use flutter_bloc for large-scale products.


## Component Pattern

We use the component pattern with the Controlled Widget. The component pattern gives us the separation of concerns with the separation of modules. The structure is following.
* lib
  * main.dart (entry point of the application).
  * src
    * app.dart (Contains the initialization logic).
    * components 
      * auth 
        * views (contains the UI layer of auth module). 
        * widgets (contains the widgets of auth module). 
        * controllers (contains the controllers of auth module). 
    * base (contains the theme, assets, and constants classes of the application). 
    * utils (contains the util classes of the application). 
    * widget (contains the shared widgets (buttons etc) of the application). 
    * entities (contains the model and data classes of the application). 
    * core (contains the API and other services of the application).
