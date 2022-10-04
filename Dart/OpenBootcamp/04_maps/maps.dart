void main(List<String> args) {
  var user = {
    "name": "Miqueas Martinez",
    "username": "average_nerd",
    "age": 22
  };

  Map<String, int> numbers = {
    "two": 2,
    "four": 4,
    "six": 6
  };

  var listAsMap = [ 10, 20, 30, 40 ].asMap();

  print(user);
  print(numbers);
  print(listAsMap);
}