import 'package:flutter/foundation.dart';
import 'package:simple_bloc_example/bloc/decrement.dart';

class MyBloc extends ChangeNotifier with DecrementMixin {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    // zählt den counter hoch
    _counter++;

    // benachrichtigt alle Listener, dass sich der Wert geändert hat
    notifyListeners();
  }

  // man kann hier die ganzen Funktionen reinpacken wie z.B. decrement, reset, etc.
  // Oder halt auch was in die Datenbank speicher ...
  // man kann auch mixins benutzen um den Bloc übersichtlicher zu machen
  // Ich habe mal ein beispiel mit decrement gemacht.
  // Man sollte natürlich alles was zusammen gehört zusammen packen
  // Natürlich muss man es nicht machen z.B. ich habe in einem Privaten Projekt alles in einer Datei
  // Und habe keine Mixins benutzt weil ich die Variablen von einem auch für das andere benutze
}
