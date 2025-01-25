```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } catch (e) {
        print('Error decoding JSON: $e');
        // Consider rethrowing or returning a default value.
        return null; // Or throw an exception for more aggressive error handling
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
      // You might want to throw an exception here for higher level handling
      throw Exception('Request failed with status: ${response.statusCode}'); 
    }
  } catch (e) {
    print('An unexpected error occurred: $e');
    return null; // Or rethrow, depending on your error handling strategy
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print('Data fetched successfully: $data');
  } else {
    print('Failed to fetch data.');
  }
}
```