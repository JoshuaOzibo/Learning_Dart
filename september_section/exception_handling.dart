void main() {
  // Exception handling
  try {
    print(10 ~/ 3);
    print(10 / 0);
    print(10 ~/ 0);
    print('josh');
  } on Exception catch (e) { // this helps to print some kind of exception error;
    print(e);
  } catch (e) {
    // e for exception
    print('an error occured');
    print(e);
  } finally {
    print(
      'finally block run run',
    ); // finally just run all the time , even if the catch block is executed it still run;
  }
}
