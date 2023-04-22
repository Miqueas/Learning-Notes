void main(List<String> args) {
  // I'm lazy about this shit xd

  var numbers = [ 2, 4, 6, 8 ];
  var names = [ "Juan", "Pedro", "María", "Natalia" ];
  
  var listOfLists = [
    numbers,
    names
  ];

  var fixedSizeList = List.filled(10, null, growable: false);

  print(numbers);
  print(names);
  print(listOfLists);
  print(fixedSizeList);
}