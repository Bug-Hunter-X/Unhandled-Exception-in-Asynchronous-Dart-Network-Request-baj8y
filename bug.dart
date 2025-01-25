```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      // print(response.body);
      final jsonData = jsonDecode(response.body);
      // Access data from jsonData
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // rethrow the exception to be handled by a higher level, if needed.
    rethrow; 
  }
}
```