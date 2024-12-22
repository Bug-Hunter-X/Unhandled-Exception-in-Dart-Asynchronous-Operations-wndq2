```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Do something with the response
      print('Success!');
    } else {
      // An error occurred
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions - This is where rethrow is important!
    print('Error in fetchData: $e');
    rethrow; // Re-throw the exception
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('An error occurred in main: $e');
  }
}
```