# globalstore

##Methods

```dart
context.initState("key", "value"); // initial state
context.get("key"); //get value from state !! null if not initialized !!
context.update("key", "new value"); // update state
context.subscribe("key", callback); // subscribe to the store !! notifying callback every time the value of key is changed return unsubscribe method
```

##Example:

```dart
class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _counter = 0;
  Function unsubscribe = () {};

  @override
  void initState() {
    // TODO: implement initState
    _counter = context.get("counter");
    super.initState();
    unsubscribe = context.subscribe("counter", () {
      setState(() {
        _counter = context.get("counter");
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    unsubscribe();
    print(context);
  }

   @override
  Widget build(BuildContext context) {
    return Text(
      "${_counter}",
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
```
