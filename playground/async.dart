// simple dart program for testing async and await

void main() {
  print('Main program: Start');
  print('Main program: Calling myAsyncFunction');
  myAsyncFunction();
  print('Main program: End');
}

Future<void> myAsyncFunction() async {
  print('myAsyncFunction: Start');
  print('myAsyncFunction: Calling myFutureFunction');
  await myFutureFunction();
  print('myAsyncFunction: End');
}

Future<void> myFutureFunction() {
  print('myFutureFunction: Start');
  return Future.delayed(Duration(seconds: 2), () {
    print('myFutureFunction: End');
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
 */
