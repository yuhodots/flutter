// simple dart program for testing async, await, callback, and then

void main() {
  print('Main program: Start');
  print('Main program: Calling myAsyncFunction');
  myAsyncFunction().then((value) => {print(value)});
  print('Main program: End');
}

Future<String> myAsyncFunction() async {
  print('myAsyncFunction: Start');
  print('myAsyncFunction: Calling myFutureFunction');
  return myFutureFunction().then((value) {
    print('myAsyncFunction: End');
    return value;
  });
}

Future<String> myFutureFunction() {
  print('myFutureFunction: Start');
  return Future.delayed(Duration(seconds: 2), () {
    print('myFutureFunction: End');
    return 'Future function completed';
  });
}

/* Output:
Main program: Start
Main program: Calling myAsyncFunction
myAsyncFunction: Start
myAsyncFunction: Calling myFutureFunction
myFutureFunction: Start
Main program: End
myFutureFunction: End
myAsyncFunction: End
Future function completed
 */