mixin DecrementMixin {
  // Decrememt würde hier halt kein sinn machen aber ich wollte nur ein Beispiel machen
  // weil decrement brauch die Variable _counter welche in MyBloc ist
  // und hier hast du kein zugriff auf die Variable
  // es gibt sicherlich eine möglichkeit aber warum so umständlich wenn es auch einfach geht
  void decrement() {
    print('decrement');
  }
}
