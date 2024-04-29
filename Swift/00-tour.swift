// This is a comment

// Outputs "Hello, world!"
print("Hello, world!")

var aVariable = 29
let aConstant = "This doesn't need to be known at compile time"

// Swift is statically typed, but it is also type inferred, so isn't necessary
// to always specify the type of a variable or constant
var inferredType = "This is inferred to be a string"
var explicitType: String = "This is explicitly typed as a string"

// Type conversion
print(String(aVariable))

// String interpolation
print("The value of aVariable is \(aVariable)")

// Multi-line strings
var aBigString = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Mattis vulputate enim nulla aliquet
porttitor lacus luctus. Venenatis cras sed felis eget.
"""

// Arrays and dictionaries
var fruits = [ "apples", "oranges", "pears" ]
var occupations = [
  "Matt": "Developer",
  "Jenny": "Designer",
]

occupations["Josh"] = "Human Resources"

// Arrays grow automatically
fruits.append("bananas")
print(fruits)

// Empty arrays and dictionaries
fruits = []
occupations = [:]

// For empty arrays and dictionaries assignments, is recommended to indicate the
// type
var anEmptyArray: [String] = []
var anEmptyDictionary: [String: Int] = [:]

// ==== Control Flow ====

// If statements
if aVariable > 10 {
  print("aVariable is greater than 10")
} else {
  print("aVariable is less than 10")
}

// If or Switch statements can be used in assignments
var isTwentyNineGreaterThanTen = if aVariable > 10 {
  true
} else {
  false
}

// The condition in an If statement must be a boolean expression. Which means
// that code like this won't work:
//     if aVariable { ... }

// For loop
var pairs = [ 2, 4, 6, 8 ]