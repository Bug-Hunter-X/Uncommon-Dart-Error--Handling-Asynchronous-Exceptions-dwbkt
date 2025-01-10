```dart
import 'dart:async';
import 'dart:io';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    // Throw an exception to simulate a network error or any other error
    throw Exception('Network error occurred');
  } on TimeoutException catch (e) {
    // Handle TimeoutException specifically
    print('Timeout error: $e');
  } on SocketException catch (e) {
    // Handle SocketException specifically
    print('Socket error: $e');
  } on FormatException catch (e) {
    // Handle FormatException specifically
    print('Format error: $e');
  } on Exception catch (e) {
    // Handle any other exception
    print('An error occurred: $e');
  } catch (e) {
    // Handle any other unexpected error
    print('Unexpected error: $e');
  } finally {
    // This block will always execute, even if an exception occurs
    print('Data fetching completed');
  }
}

void main() async {
  await fetchData();
}
```