---
tags:
  - WIP
  - Article
  - Tutorial
  - Guide
  - FAQ
  - How-to
---
# C# Notes

[![W3Schools](https://img.shields.io/badge/W3Schools-seagreen?style=for-the-badge&logoColor=white)](https://www.w3schools.com/cs/)
[![Microsoft: Tutorial](https://img.shields.io/badge/Tutorial-blue?style=for-the-badge&logo=Microsoft&logoColor=white)](https://learn.microsoft.com/en-us/dotnet/core/tutorials/with-visual-studio-code)

## Tutorial

### Intro

Create console app template using command `dotnet new console --framework net7.0` or `dotnet new console --framework net7.0 --force`

Visual Studio Code will prompts to add the missing assets to build and debug the app. Or add the configuration at "Run and Debug"

Include `using System;` on top of the file to use classes from `System` namespace. Or use inline such as `System.Console.WriteLine()`

C# ignores whitespace/blank line

`namespace` in code is to organize the code, and it is a container for classes and other namespaces

`{}` marks the beginning and the end of a block of code

`class` is a container for data and methods, Every line of code that runs in C# must be inside a class

Every C# statement ends width a semicolon `;`

C# is case-sensitive: `MyClass` and `myclass` has different meaning

C# file does not have to match the class name

### Output

`Console` is a class of the `System` namespace, which has `WriteLine()` method that is used to output/print text. `Write()` method used to output/print text not in new line

### Comments

Comment in C# start with two forward slashes `//`. Text between slashes and the end of the line is ignored

Multi-line comments start with `/*` and ends with `*/`

### Variables

`int` - stores integers(whole numbers), without decimals

`double` - stores floating point numbers, with decimals

`char` - stores single characters, such as `a` or `B`, surrounded by single quotes

`string` - stores text, such as "Hello World", surrounded by double quotes

`bool` - stores values with two states: true of false

To create a variable, must specify the type and assign it a value: `type variableName = value;`

Example:

```.cs
string name = "John";
Console.WriteLine(name);

int myNum;
myNum = 15;
Console.WriteLine(myNum);

int myNum = 15;
myNum = 20;
Console.WriteLine(myNum);

int myNum = 5;
double myDoubleNum = 5.99D;
char myLetter = 'D';
bool myBool = true;
string myText = "Hello";
```

add `const` keyword in front of the variable type, if don't want others to overwrite existing values, "constant", unchangeable and read-only

Cannot declare a constant variable without assigning the value

Can use `WriteLine()` method to display variable values to the console window

Combine with `+`

```.cs
string name = "Amirul";
Console.WriteLine("Hello " + name);
string firstName = "Amirul";
string lastName = "Aziz";
string fullName = firstName + lastName;
Console.WriteLine(fullName);
```

For numeric values, the `+` character works as a mathematical operator

```.cs
int x = 5;
int y = 6;
Console.WriteLine(x+y);
```

Can declare more than one variable of the same type, use comma-separated list

```.cs
int x = 5, y = 6,z = 50;
Console.WriteLine(x+y+z);
```

Can also assign the same value to multiple variables

```.cs
int x, y, z;
x = y = z = 50;
Console.WriteLine(x+y+z);
```

All variables must be identified with unique names, called identifiers

The general rules for naming variables are:

- Names can contain letters, digits and the underscore character (\_)
- Names must begin with a letter
- Names should start with a lowercase letter and it cannot contain whitespace
- Names are case sensitive ("myVar" and "myvar" are different variables)
- Reserved words (like C# keywords, such as `int` or `double`) cannot be used as names

### Data Types

A data type specifies the size and type of variable values

important to use correct data type to avoid errors, save time and memory and make code more maintainable and readable

Most common data types are:

| Data Type | Size                  | Description                                                                       |
| --------- | --------------------- | --------------------------------------------------------------------------------- |
| int       | 4 bytes               | Stores whole numbers from -2,147,483,648 to 2,147,483,647                         |
| long      | 8 bytes               | Stores whole numbers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 |
| float     | 4 bytes               | Stores fractional numbers. Sufficient for storing 6 to 7 decimal digits           |
| double    | 8 bytes               | Stores fractional numbers. Sufficient for storing 15 decimal digits               |
| bool      | 1 bit                 | Stores true or false values                                                       |
| char      | 2 bytes               | Stores a single character/letter, surrounded by single quotes                     |
| string    | 2 bytes per character | Stores a sequence of characters, surrounded by double quotes                      |

Number types are divided into two: Integer types(`int`,`long`) and Floating Types(`float`,`double`)

`float` and `double` data types can store fractional numbers, should end the value with an "F" for floats and "D" for doubles

floating point number can also be a scientific number with an "e" to indicate the power of 10

```.cs
float f1 = 35e3F;
double d1 = 12E4D;
Console.WriteLine(f1);
Console.WriteLine(d1);
```

`bool` keyword can only take values `true` or `false`:

```.cs
bool isCSharpFun = true;
bool isFishTasty = false;
Console.WriteLine(isCSharpFun); // Outputs True
Console.WriteLine(isFishTasty); // Outputs False
```

`Char` data type is used to store a single character, must be surrounded by single quotes

`String` data type is used to store a sequence of characters (text), values must be surrounded by double quotes

### Type Casting

Assign a value of one data type to another type.

- Implicit Casting (automatically) - converting a smaller type to a larger type size: `char`->`int`->`long`->`float`->`double`
- Explicit Casting (manually) - converting a larger type to a smaller size type: `double`->`float`->`long`->`int`->`char`

### User Input

`Console.ReadLine()` to get user input

```.cs
// Type your username and press enter
Console.WriteLine("Enter username:");

// Create a string variable and get user input from the keyboard and store it in the variable
string userName = Console.ReadLine();

// Print the value of the variable (userName), which will display the input value
Console.WriteLine("Username is: " + userName);
```

`Console.ReadLine()` method returns a `string`, cannot get information from another data type, but can convert

`Convert.ToInt32`
`Convert.ToDecimal`
`Convert.ToBoolean`
`Convert.ToDateTime`
`Convert.ToDouble`
`Convert.ToInt64`

```.cs
Console.WriteLine("Enter your age:");
int age = Convert.ToInt32(Console.Readline());
Console.WriteLine("Your age is: " + age);
```

### Operators

`+` operator to add together two values, it can also be used to add together a variable and a value, or a variable and another variable

Arithmetic operators are used to perform common mathematical operations

| Operator | Name           | Description                            | Example |
| -------- | -------------- | -------------------------------------- | ------- |
| +        | Addition       | Adds together two values               | x + y   |
| -        | Subtraction    | Subtracts one value from another       | x - y   |
| \*       | Multiplication | Multiplies two values                  | x \* y  |
| /        | Division       | Divides one value by another           | x / y   |
| %        | Modulus        | Returns the division remainder         | x % y   |
| ++       | Increment      | Increases the value of a variable by 1 | x++     |
| --       | Decrement      | Decreases the value of a variable by 1 | x--     |

Assignment operators `=` are used to assign values to variables

Addition assignment operator `+=` adds a value to a variable

| Operator | Example | Same As    |
| -------- | ------- | ---------- |
| =        | x = 5   | x = 5      |
| +=       | x += 3  | x = x + 3  |
| -=       | x -= 3  | x = x - 3  |
| \*=      | x \*= 3 | x = x \* 3 |
| /=       | x /= 3  | x = x / 3  |
| %=       | x %= 3  | x = x % 3  |
| &=       | x &= 3  | x = x & 3  |
| l=       | x l= 3  | x = x l 3  |
| ^=       | x ^= 3  | x = x ^ 3  |
| >>=      | x >>= 3 | x = x >> 3 |
| <<=      | x <<= 3 | x = x << 3 |

Comparison operators are used to compare two values (or variables), the return value of a comparison is either `True` or `False`

| Operator | Name                     | Example |
| -------- | ------------------------ | ------- |
| ==       | Equal to                 | x == y  |
| !=       | Not equal                | x != y  |
| >        | Greater than             | x > y   |
| <        | Less than                | x < y   |
| >=       | Greater than or equal to | x >= y  |
| <=       | Less than or equal to    | x <= y  |

Can also test for `True` of `False` values with logical operators

| Operator | Name        | Description                                   | Example            |
| -------- | ----------- | --------------------------------------------- | ------------------ |
| &&       | Logical and | Returns True if both statements are true      | x < 5 && x < 10    |
| \|\|     | Logical or  | Returns True if one of the statements is true | x < 5 \|\| x < 4   |
| !        | Logical not | Reverse the result, returns False if true     | !(x < 5 && x < 10) |

### Math

C# Math class has many methods that allows you to perform mathematical tasks on numbers

`Math.Max(x,y)` method can be used to find the highest value of x and y

`Math.Min(x,y)` method can be used to find the lowest value

`Math.Sqrt(x)` method return the square root of x

`Math.Abd(x)` method returns the absolute (positive) value of x

`Math.Round()` rounds a number to the nearest whole number

```.cs
Console.WriteLine(Math.Max(5, 10) + " " + Math.Sqrt(64) + " " + Math.Min(5, 10) + " " + Math.Abs(-4.7) + " " + Math.Round(9.99));
```

### Strings

Used for storing text, contains a collection of characters surrounded by double quotes, can contain many words

A string in C# is actually an object, contain properties and methods that can perform certain operations on strings, example, the length of a string ca be found with the `Length` property

There are many string methods available, example, `ToUpper()` and `ToLower()`, which returns a copy of the string converted to uppercase or lowercase

```.cs
string greeting = "Hello world!";
string txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
Console.WriteLine("The length of the txt string is: " + txt.Length);
string txt = "Hello World";
Console.WriteLine(txt.ToUpper());   // Outputs "HELLO WORLD"
Console.WriteLine(txt.ToLower());   // Outputs "hello world"
```

```.cs
string text = "   Hello, world!   ";
int length = text.Length; // Length: Returns 18
string upperCaseText = text.ToUpper(); // ToUpper: Converts the string to uppercase. Returns "   HELLO, WORLD!   "
string lowerCaseText = text.ToLower(); // ToLower: Converts the string to lowercase. Returns "   hello, world!   "
string substring = text.Substring(7, 5); // Substring: Extracts the substring "world"
string replacedText = text.Replace("world", "universe"); // Replace: Replaces "world" with "universe". Returns "   Hello, universe!   "
string trimmedText = text.Trim(); // Trim: Removes leading and trailing whitespace characters. Returns "Hello, world!"

Console.WriteLine("Original Text: " + text);
Console.WriteLine("Length: " + length);
Console.WriteLine("Uppercase: " + upperCaseText);
Console.WriteLine("Lowercase: " + lowerCaseText);
Console.WriteLine("Substring: " + substring);
Console.WriteLine("Replaced Text: " + replacedText);
Console.WriteLine("Trimmed Text: " + trimmedText);


```

`+` operator can e used between strings to combine them, this is called concatenation

Can also use the `string.Concat()` method to concatenate two strings

```.cs
string firstName = "John ";
string lastName = "Doe";
string name = firstName + lastName;
Console.WriteLine(name);
string name = string.Concat(firstName, lastName);
Console.WriteLine(name);
```

C# uses the + operator for both addition and concatenation, numbers are added, strings are concatenated

another option of string concatenation, is string interpolation, which substitutes values of variables into placeholders in a string

```.cs
string firstName = "John";
string lastName = "Doe";
string name = $"My full name is: {firstName} {lastName}";
Console.WriteLine(name);
```

Can access the characters in a string by referring to its index number inside square brackets `[]`

```.cs
string myString = "Hello";
Console.WriteLine(myString[0]);  // Outputs "H"
```

Can also find the index position of a specific character in a string, by using the `IndexOf()` method

```.cs
string myString = "Hello";
Console.WriteLine(myString.IndexOf("e"));  // Outputs "1"
```

Another useful method is `Substring()`, extracts the characters from a string, often used together with `IndexOf()` to get the specific character position

```.cs
// Full name
string name = "John Doe";

// Location of the letter D
int charPos = name.IndexOf("D");

// Get last name
string lastName = name.Substring(charPos);

// Print the result
Console.WriteLine(lastName);
```

To use special character such as in string, need to put the backslash escape character

| Escape Character | Result | Description  |
| ---------------- | ------ | ------------ |
| \'               | '      | Single quote |
| \"               | "      | Double quote |
| \\               | \      | Backslash    |

Other usefull escape characters in C# are

| Escape Character | Result    | Description         |
| ---------------- | --------- | ------------------- |
| \n               | New Line  | Inserts a new line  |
| \t               | Tab       | Inserts a tab       |
| \b               | Backspace | Inserts a backspace |

### Booleans

C# has `bool` data type, which can take the values `true` or `false`, `bool` keyword and can only take the values `true` or `false`

Can use a comparison operator, such as the greater that (`>`) operator to find out if an expression (or a variable) is true

```.cs
bool isCSharpFun = true;
bool isFishTasty = false;
Console.WriteLine(isCSharpFun);   // Outputs True
Console.WriteLine(isFishTasty);   // Outputs False
int x = 10;
int y = 9;
Console.WriteLine(x > y); // returns True, because 10 is higher than 9
```

### If ... Else

`if` statement to specify a block of C# code to be executed if a condition is `True`

`else` statement to specify a block of code to be executed if the condition is `False`

`else if` statement to specify a new condition if the first condition is `False`

```.cs
int time = 22;
if (time < 10)
{
  Console.WriteLine("Good morning.");
}
else if (time < 20)
{
  Console.WriteLine("Good day.");
}
else
{
  Console.WriteLine("Good evening.");
}
// Outputs "Good evening."
```

A short-hand if else, which is known as the ternary operator because it consists of three operands, can be used to replace multiple lines of code with a single line, often used to replace simple if else statements

```.cs
int time = 20;
string result = (time < 18) ? "Good day." : "Good evening.";
Console.WriteLine(result);
```

### Switch

`switch` statement to select one of many code blocks to be executed

`break` keyword, it breaks out of the switch block, this will stop the execution of more code and case testing inside the block

`default` keyword is optional and specifies some code to run if there is no case match

```.cs
int day = 4;
switch (day)
{
  case 6:
    Console.WriteLine("Today is Saturday.");
    break;
  case 7:
    Console.WriteLine("Today is Sunday.");
    break;
  default:
    Console.WriteLine("Looking forward to the Weekend.");
    break;
}
// Outputs "Looking forward to the Weekend."
```

### While Loop

Loops can execute a block of code as long as a specified condition is reached

`while` loop loops through a block of code as long as a specified condition is `True`

```.cs
int i = 0;
while (i < 5)
{
  Console.WriteLine(i);
  i++;
}
```

The `do/while` loop is a variant of the `while` loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true

```.cs
int i = 0;
do
{
  Console.WriteLine(i);
  i++;
}
while (i < 5);
```

### For Loop

When know exactly how many times you want to loop through a block of code, use `for` loop instead of a `while` loop

```.cs
for (int i = 0; i < 5; i++)
{
  Console.WriteLine(i);
}

for (int i = 0; i <= 10; i = i + 2)
{
  Console.WriteLine(i);
}
```

Possible to place a loop inside another loop. This is called a nested loop

```.cs
// Outer loop
for (int i = 1; i <= 2; ++i)
{
  Console.WriteLine("Outer: " + i);  // Executes 2 times

  // Inner loop
  for (int j = 1; j <= 3; j++)
  {
    Console.WriteLine(" Inner: " + j); // Executes 6 times (2 * 3)
  }
}
```

`foreach` loop, is used exclusively to loop through elements in an array

```.cs
string[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
foreach (string i in cars)
{
  Console.WriteLine(i);
}
```

### Break and Continue

`break` statement can also be used to jump out of a loop

```.cs
for (int i = 0; i < 10; i++)
{
  if (i == 4)
  {
    break;
  }
  Console.WriteLine(i);
}
```

`continue` statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop

```.cs
for (int i = 0; i < 10; i++)
{
  if (i == 4)
  {
    continue;
  }
  Console.WriteLine(i);
}
```

Can also use `break` and `continue` in while loops

```.cs
int i = 0;
while (i < 10)
{
  Console.WriteLine(i);
  i++;
  if (i == 4)
  {
    break;
  }
}

int j = 0;
while (j < 10)
{
  if (j == 4)
  {
    ij++;
    continue;
  }
  Console.WriteLine(j);
  j++;
}

```

### Arrays

Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value

To declare an array, define the variable type with square brackets

```.cs
string[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
int[] myNum = {10, 20, 30, 40};
```

Access an array element by referring to the index number

To change the value of a specific element, refer to the index number

To find out how many elements an array has, use the `Length` property

```.cs
string[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
cars[0] = "Opel";
Console.WriteLine(cars[0]);
// Now outputs Opel instead of Volvo
Console.WriteLine(cars.Length);
```

If you declare an array and initialize it later, you have to use the `new` keyword

```.cs
// Declare an array
string[] cars;

// Add values, using new
cars = new string[] {"Volvo", "BMW", "Ford"};
```

Loop through the array elements with the `for` loop, and use the `Length` property to specify how many times the loop should run

```.cs
string[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
for (int i = 0; i < cars.Length; i++)
{
  Console.WriteLine(cars[i]);
}
```

Also a `foreach` loop, which is used exclusively to loop through elements in an array

```.cs
string[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
foreach (string i in cars)
{
  Console.WriteLine(i);
}
```

Many array methods available, for example `Sort()`, which sorts an array alphabetically or in an ascending order

```.cs
// Sort a string
string[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
Array.Sort(cars);
foreach (string i in cars)
{
  Console.WriteLine(i);
}

// Sort an int
int[] myNumbers = {5, 1, 8, 9};
Array.Sort(myNumbers);
foreach (int i in myNumbers)
{
  Console.WriteLine(i);
}
```

Other useful array methods, such as `Min`, `Max`, and `Sum`, can be found the `System.Linq` namespace

```.cs
using System;
using System.Linq;

namespace MyApplication
{
  class Program
  {
    static void Main(string[] args)
    {
      int[] myNumbers = {5, 1, 8, 9};
      Console.WriteLine(myNumbers.Max());  // returns the largest value
      Console.WriteLine(myNumbers.Min());  // returns the smallest value
      Console.WriteLine(myNumbers.Sum());  // returns the sum of elements
    }
  }
}
```

Arrays is known as single dimension arrays. If want to store data as a tabular form, like a table with rows and columns, need to get familiar with multidimensional arrays

Is basically an array of arrays

Arrays can have any number of dimensions, the most common are two-dimensional arrays (2D)

To create a 2D array, add each array within its own set of curly braces, and insert a comma (,) inside the square brackets

```.cs
int[,] numbers = { {1, 4, 2}, {3, 6, 8} };
```

To access an element of a two-dimensional array, you must specify two indexes: one for the array, and one for the element inside that array, or better yet, with the table visualization in mid; one fro the row and one for the column

```.cs
int[,] numbers = { {1, 4, 2}, {3, 6, 8} };
Console.WriteLine(numbers[0, 2]);  // Outputs 2
```

Can also change the value of an element

```.cs
int[,] numbers = { {1, 4, 2}, {3, 6, 8} };
numbers[0, 0] = 5;  // Change value to 5
Console.WriteLine(numbers[0, 0]); // Outputs 5 instead of 1
```

Can easily loop through the elements of a two-dimensional array with a `foreach` loop

```.cs
int[,] numbers = { {1, 4, 2}, {3, 6, 8} };

foreach (int i in numbers)
{
  Console.WriteLine(i);
}
```

Can also use a for loop, for multidimensional arrays, need one loop for each of the array's dimensions

Note that we have to use `GetLength()` instead of `Length` to specify how many times the loop should run

```.cs
int[,] numbers = { {1, 4, 2}, {3, 6, 8} };

for (int i = 0; i < numbers.GetLength(0); i++)
{
  for (int j = 0; j < numbers.GetLength(1); j++)
  {
    Console.WriteLine(numbers[i, j]);
  }
}
```

## Methods

### Method

A method is a block of code which only runs when its is called

Can pass data, known as parameters, into a method

Used to perform certain actions, and they are also known as functions

To reuse code: define the code once, and use it many times

A method is defined with the name of the method, followed by parentheses ()

To call (execute) a method, write the method's name followed by two parentheses () and a semicolon ;

A method can be

```.cs
static void MyMethod()
{
  Console.WriteLine("I just got executed!");
}

static void Main(string[] args)
{
  MyMethod();
  MyMethod();
  MyMethod();
}

// I just got executed!
// I just got executed!
// I just got executed!
```

### Method Parameters

Information ca be passed to methods as parameter. Parameter act as variables inside the method

Can add as many parameters, just separate them with a comma

```.cs
static void MyMethod(string fname, int age)
{
  Console.WriteLine(fname + " is " + age);
}

static void Main(string[] args)
{
  MyMethod("Liam", 5);
  MyMethod("Jenny", 8);
  MyMethod("Anja", 31);
}

// Liam is 5
// Jenny is 8
// Anja is 31
```

Can also use a default parameter value, by using the equals sign (`=`)

If call the method without an argument, it uses the default value

```.cs
static void MyMethod(string country = "Norway")
{
  Console.WriteLine(country);
}

static void Main(string[] args)
{
  MyMethod("Sweden");
  MyMethod("India");
  MyMethod();
  MyMethod("USA");
}

// Sweden
// India
// Norway
// USA
```

`void` keyword indicates that the method should not return a value

If want the method return a value, ca use a primitive data type instead of `void`, and use the `return` keyword inside the method

Can return the sum of a method's two parameters

Can also store the result in a variable

```.cs
static int MyMethod(int x, int y)
{
  return x + y;
}

static void Main(string[] args)
{
  int z = MyMethod(5, 3);
  Console.WriteLine(z);
}

// Outputs 8 (5 + 3)
```

It is also possible to send arguments with the `key: value` syntax

```.cs
static void MyMethod(string child1, string child2, string child3)
{
  Console.WriteLine("The youngest child is: " + child3);
}

static void Main(string[] args)
{
  MyMethod(child3: "John", child1: "Liam", child2: "Liam");
}

// The youngest child is: John
```

With method overloading, multiple methods can have the same name with different parameters

```.cs
static int PlusMethod(int x, int y)
{
  return x + y;
}

static double PlusMethod(double x, double y)
{
  return x + y;
}

static void Main(string[] args)
{
  int myNum1 = PlusMethod(8, 5);
  double myNum2 = PlusMethod(4.3, 6.26);
  Console.WriteLine("Int: " + myNum1);
  Console.WriteLine("Double: " + myNum2);
}
```

## Classes

### OOP

OOP stands for Object-Oriented Programming

Procedural programming is about writing procedures or methods that perform operations on the data, while object-oriented programming is about creating objects that contain both data and methods

Advantages:

- OOP is faster and easier to execute
- OOP provides a clear structure for the programs
- OOP helps to keep the C# code DRY "Don't Repeat Yourself", and makes the code easier to maintain, modify and debug

Classes and objects are the two main aspects of object-oriented programming

Below illustration to see the difference between class and objects

| Class | Objects |
| ----- | ------- |
| Car   | Volvo   |
|       | Audi    |
|       | Toyota  |

| Class | Objects |
| ----- | ------- |
| Fruit | Apple   |
|       | Banana  |
|       | Mango   |

A class is a template for objects, and an object is an instance of a class

When the individual objects are created, they inherit all the variables and methods from the class

Everything in C# is associated with classes and objects, along with its attributes and methods,

A class is like an object constructor, or a "blueprint" for creating objects

To create a class, use the `class` keyword

When a variable is declared directly in a class, it is often referred to as a field or attribute

```.cs
class Car
{
  string color = "red";
}
```

An object is created from a class

```.cs
class Car
{
  string color = "red";

  static void Main(string[] args)
  {
    Car myObj = new Car();
    Console.WriteLine(myObj.color);
  }
}
```

Can create multiple objects of one class

```.cs
class Car
{
  string color = "red";
  static void Main(string[] args)
  {
    Car myObj1 = new Car();
    Car myObj2 = new Car();
    Console.WriteLine(myObj1.color);
    Console.WriteLine(myObj2.color);
  }
}
```

Can also create an object of a class and access it in another class

`public` keyword is called an access modifier, accessible for other classes as well

```.cs
class Car
{
  public string color = "red";
}
```

```.cs
class Program
{
  static void Main(string[] args)
  {
    Car myObj = new Car();
    Console.WriteLine(myObj.color);
  }
}
```

Fields and methods inside classes are often referred to as "Class Members"

```.cs
// The class
class MyClass
{
  // Class members
  string color = "red";        // field
  int maxSpeed = 200;          // field
  public void fullThrottle()   // method
  {
    Console.WriteLine("The car is going as fast as it can!");
  }
}
```

Can also leave the fields blank, and modify them when creating the object

Useful when creating multiple objects of one class

```.cs
class Car
class Car
{
  string model;
  string color;
  int year;

  static void Main(string[] args)
  {
    Car Ford = new Car();
    Ford.model = "Mustang";
    Ford.color = "red";
    Ford.year = 1969;

    Car Opel = new Car();
    Opel.model = "Astra";
    Opel.color = "white";
    Opel.year = 2005;

    Console.WriteLine(Ford.model);
    Console.WriteLine(Opel.model);
  }
}
```

Methods normally belongs to a class, and they define how an object of a class behaves

Can acesses methods with the dot syntax, method must be `public`, and remember that use the name of the method followed by two parantheses `()` and a semicolon `;` to call (execute) the method

A `static` method can be accessed without creating an object of the class, while `public` methods can only be accessed by objects

```.cs
class Car
{
  string color;                 // field
  int maxSpeed;                 // field
  public void fullThrottle()    // method
  {
    Console.WriteLine("The car is going as fast as it can!");
  }

  static void Main(string[] args)
  {
    Car myObj = new Car();
    myObj.fullThrottle();  // Call the method
  }
}
```

Multiple classes

```prog2.cs
class Car
{
  public string model;
  public string color;
  public int year;
  public void fullThrottle()
  {
    Console.WriteLine("The car is going as fast as it can!");
  }
}
```

```prog.cs
class Program
{
  static void Main(string[] args)
  {
    Car Ford = new Car();
    Ford.model = "Mustang";
    Ford.color = "red";
    Ford.year = 1969;

    Car Opel = new Car();
    Opel.model = "Astra";
    Opel.color = "white";
    Opel.year = 2005;

    Console.WriteLine(Ford.model);
    Console.WriteLine(Opel.model);
  }
}
```

`public` keyword is called an access modifier

### Constructors

A constructor is a special method that is used to initialize objects. Advantage of a contructor, is that it is called when an object of a class is created. It can be used to set initial values for fields

The constructor name must match the class name, and it cannot have a return type (like `void` or `int`)

The constructor is called when the object is created

All classes have constructors by default: if you do not create a class constructor yourself, C# creates one for you, however, then you are not able to set initial values for fields

Constructors save time

```.cs
// Create a Car class
class Car
{
  public string model;  // Create a field

  // Create a class constructor for the Car class
  public Car()
  {
    model = "Mustang"; // Set the initial value for model
  }

  static void Main(string[] args)
  {
    Car Ford = new Car();  // Create an object of the Car Class (this will call the constructor)
    Console.WriteLine(Ford.model);  // Print the value of model
  }
}

// Outputs "Mustang"
```

Constructors can also take parameters, which is used to initialize fields

Can have as many parameters as you want

Just like other methods, constructors can be overloaded by using different numbers of parameters

```.cs
class Car
{
  public string model;
  public string color;
  public int year;

  // Create a class constructor with multiple parameters
  public Car(string modelName, string modelColor, int modelYear)
  {
    model = modelName;
    color = modelColor;
    year = modelYear;
  }

  static void Main(string[] args)
  {
    Car Ford = new Car("Mustang", "Red", 1969);
    Console.WriteLine(Ford.color + " " + Ford.year + " " + Ford.model);
  }
}


// Outputs Red 1969 Mustang
```

Constructors help reducing hte amount of code

### Access Modifiers

`public` keyword is an access modifier, which is used to set the access level/visibility for classes, fields, methods and properties

C# has the following access modifiers:

| Modifier  | Description                                                                                    |
| --------- | ---------------------------------------------------------------------------------------------- |
| public    | The code is accessible for all classes.                                                        |
| private   | The code is only accessible within the same class.                                             |
| protected | The code is accessible within the same class, or in a class that is inherited from that class. |
| internal  | The code is only accessible within its own assembly, but not from another assembly.            |

There's also two combinations: `protected internal` and `private protected`

If you declare a field with a `public` access modifier, it is accessible for all classes

if declare a field with a `private` access modifier, it can only be accessed within the same class

To control the visibility of class members (the security level of each individual class and class member)

To archieve "Encapsulation" - which is the process of making sure that "sensitive" data is hidden from users, this is done by declaring fields as `private`

By default, all members of a class are `private` if you don't specify an access modifier

```.cs
class Car
{
  private string model = "Mustang";

  static void Main(string[] args)
  {
    Car myObj = new Car();
    Console.WriteLine(myObj.model);
  }
}
```

```.cs
class Car
{
  private string model = "Mustang";
}

class Program
{
  static void Main(string[] args)
  {
    Car myObj = new Car(); // error
    Console.WriteLine(myObj.model);
  }
}
```

```.out
'Car.model' is inaccessible due to its protection level
The field 'Car.model' is assigned but its value is never used
```

### Properties (Get and Set)

Encapsulation is to make sure that "sensitive" data is hidden from users, to achive this,

- declare fields/variables as private
- provide `public` `get` and `set` methods, through properties, to access and update the value of a `private` field

`private` variables can be access with properties

A property is like a combination of a variable and a method, and it has two methods: a `get` and a `set` method

```.cs
class Person
{
  private string name; // field

  public string Name   // property
  {
    get { return name; }   // get method
    set { name = value; }  // set method
  }
}
```

Example explained:

- The `Name` property is associated with the `name` field. It is good practice to use the same name for both the property and the private field, but with an uppercase first letter
- The `get` method returns the value of the variable `name
- The `set` method assigns a `value` to the `name` variable. The `value` keyword represents the value we assign to the property

C# also provides a way to use short-hand / automatic properties, where you do not have to define the field for the property, and you only have to write `get;` and `set;` inside the property

```.cs
class Person
{
  public string Name  // property
  { get; set; }
}

class Program
{
  static void Main(string[] args)
  {
    Person myObj = new Person();
    myObj.Name = "Liam";
    Console.WriteLine(myObj.Name);
  }
}
```

Why Encapsulation?

- Better control of class members (reduce the possibility to mess up the code)
- Fields can be make read-only (if only use the `get` method), or write-only (if only use the `set` method)
- Flexible: the programmer can change one part of the code without affecting other parts
- Increased security of data

### Inheritance (Derived and Base Class)

In C#, it is possible to inherit fields and methods from one class to antoher. We group the "inheritance concept" into two categories

- Derived Class (child) - the class that inherits from another class
- Base Class (parent) - the class being inherited from

To inherit from a class, use the `:` symbol

```.cs
class Vehicle  // base class (parent)
{
  public string brand = "Ford";  // Vehicle field
  public void honk()             // Vehicle method
  {
    Console.WriteLine("Tuut, tuut!");
  }
}

class Car : Vehicle  // derived class (child)
{
  public string modelName = "Mustang";  // Car field
}

class Program
{
  static void Main(string[] args)
  {
    // Create a myCar object
    Car myCar = new Car();

    // Call the honk() method (From the Vehicle class) on the myCar object
    myCar.honk();

    // Display the value of the brand field (from the Vehicle class) and the value of the modelName from the Car class
    Console.WriteLine(myCar.brand + " " + myCar.modelName);
  }
}
```

Why and When To Use "Inheritance"?

- It is useful for code reusability: reuse fields and methods of an existing class when you create a new class

If you don't want other classes to inherit from a class, use the `sealed` keyword

```.cs
sealed class Vehicle
{
  ...
}

class Car : Vehicle
{
  ...
}
```

```.out
'Car': cannot derive from sealed type 'Vehicle'
```

### Polymorphism

Polymorphism means "many forms", and it occurs when we have many classes that are related to each other by inheritance

Inheritance lets us inherit fields and methods from another class. Polymorphism uses those methods to perform different tasks. This allow perform a single action in different ways

For example, think of a base class called `Animal` that has a method called `animalSound()`. Derived classes of Animals could be Pigs, Cats, Dogs, Birds - And they also have their own implementation of an animal sound (the pig oinks, and the cat meows, etc):

Can create `Pig` and `Dog` objects and call the `animalSound()` method on both of them:

```.cs
class Animal  // Base class (parent)
{
  public void animalSound()
  {
    Console.WriteLine("The animal makes a sound");
  }
}

class Pig : Animal  // Derived class (child)
{
  public void animalSound()
  {
    Console.WriteLine("The pig says: wee wee");
  }
}

class Dog : Animal  // Derived class (child)
{
  public void animalSound()
  {
    Console.WriteLine("The dog says: bow wow");
  }
}
```

```.out
The animal makes a sound
The animal makes a sound
The animal makes a sound
```

C# provides an option to override the base class method, by adding the `virtual` keyword to the method inside the base class, and by using the `override` keyword for each derived class methods:

```.cs
class Animal  // Base class (parent)
{
  public virtual void animalSound()
  {
    Console.WriteLine("The animal makes a sound");
  }
}

class Pig : Animal  // Derived class (child)
{
  public override void animalSound()
  {
    Console.WriteLine("The pig says: wee wee");
  }
}

class Dog : Animal  // Derived class (child)
{
  public override void animalSound()
  {
    Console.WriteLine("The dog says: bow wow");
  }
}

class Program
{
  static void Main(string[] args)
  {
    Animal myAnimal = new Animal();  // Create a Animal object
    Animal myPig = new Pig();  // Create a Pig object
    Animal myDog = new Dog();  // Create a Dog object

    myAnimal.animalSound();
    myPig.animalSound();
    myDog.animalSound();
  }
}
```

```.out
The animal makes a sound
The pig says: wee wee
The dog says: bow wow
```

Why and when to use "Inheritance" and "Polymorphism"?

- It is useful for code reusability: reuse fields and methods of an existing class when you create a new class

### Abstraction

Data abstraction is the process of hiding certain details and showing only essential information to the user

Abstraction can be achieved with either abstract classes or interfaces

The `abstract` keyword is used for classes and methods:

- Abstract class: is a restricted class that cannot be used to create objects
- Abstract method: can only be used in an abstract class, and it does not have a body. The body is provided by the derived class (inherited from)

An abstract class can have both abstract and regular methods:

```.cs
abstract class Animal
{
  public abstract void animalSound();
  public void sleep()
  {
    Console.WriteLine("Zzz");
  }
}
```

```.out
Animal myObj = new Animal(); // Will generate an error (Cannot create an instance of the abstract class or interface 'Animal')
```

To access the abstract class, it must be inherited from another class

```.cs
// Abstract class
abstract class Animal
{
  // Abstract method (does not have a body)
  public abstract void animalSound();
  // Regular method
  public void sleep()
  {
    Console.WriteLine("Zzz");
  }
}

// Derived class (inherit from Animal)
class Pig : Animal
{
  public override void animalSound()
  {
    // The body of animalSound() is provided here
    Console.WriteLine("The pig says: wee wee");
  }
}

class Program
{
  static void Main(string[] args)
  {
    Pig myPig = new Pig(); // Create a Pig object
    myPig.animalSound();  // Call the abstract method
    myPig.sleep();  // Call the regular method
  }
}
```

Why and when to use abstract classes and methods?

To achieve security - hide certain details and only show the important details of an object

### Interface

Another way to achieve abstraction in C#, is with interfaces

An `interface` is a completely "abstract class", which can only contain abstract methods and properties (with empty bodies):

```.cs
// interface
interface Animal
{
  void animalSound(); // interface method (does not have a body)
  void run(); // interface method (does not have a body)
}
```

By default, members of an interface are `abstract` and `public`

Note: Interfaces can contain properties and methods, but not fields

To access the interface methods, the interface must be "implemented"/inherited by another class. To implement an interface, use the `:` symbol. The body of the interface method is provided by the "implement" class. Note that you do not have to use the `override` keyword when implementing an interface:

```.cs
// Interface
interface IAnimal
{
  void animalSound(); // interface method (does not have a body)
}

// Pig "implements" the IAnimal interface
class Pig : IAnimal
{
  public void animalSound()
  {
    // The body of animalSound() is provided here
    Console.WriteLine("The pig says: wee wee");
  }
}

class Program
{
  static void Main(string[] args)
  {
    Pig myPig = new Pig();  // Create a Pig object
    myPig.animalSound();
  }
}
```

Notes on Interfaces:

- Like abstract classes, interfaces cannot be used to create objects
- Interface methods do not have a body - the body is provided by the "implement" class
- On implementation of an interface, must override all of its methods
- Interfaces can contain properties and methods, but not fields/variables
- Interface member are by default `abstract` and `public`
- An interface cannot contain a constructor (as it cannot be used to create objects)

Why and when to use interfaces

1. To achieve security - hide certain details and only show the important details of an object (interface)
2. C# does not support "multiple inheritance" (a class can only inherit from one base class). However, it can be achieved with interfaces, because class can implement multiple interfaces. Note: To implement multiple interfaces, separate them with a comma

```.cs
interface IFirstInterface
{
  void myMethod(); // interface method
}

interface ISecondInterface
{
  void myOtherMethod(); // interface method
}

// Implement multiple interfaces
class DemoClass : IFirstInterface, ISecondInterface
{
  public void myMethod()
  {
    Console.WriteLine("Some text..");
  }
  public void myOtherMethod()
  {
    Console.WriteLine("Some other text...");
  }
}

class Program
{
  static void Main(string[] args)
  {
    DemoClass myObj = new DemoClass();
    myObj.myMethod();
    myObj.myOtherMethod();
  }
}
```

### Enum

An `enum` is a special "class" that represents a group of constants (unchangeable/read-only variables)

To create an `enum`, use the `enum` keyword (instead of class or interface), separate the unum items with a comma:

Enum is short for "enumerations", which means "specifically listed"

```.cs
enum Level
{
  Low,
  Medium,
  High
}

Level myVar = Level.Medium;
Console.WriteLine(myVar);
```

Can also have an `enum` inside a class:

```.cs
class Program
{
  enum Level
  {
    Low,
    Medium,
    High
  }
  static void Main(string[] args)
  {
    Level myVar = Level.Medium;
    Console.WriteLine(myVar);
  }
}
```

```.out
Medium
```

By default, the first item of an enum has the value 0. The second has the value 1, and so on

To get the integer value from an item, must explicitly convert the item to an `int`:

```.cs
enum Months
{
  January,    // 0
  February,   // 1
  March,      // 2
  April,      // 3
  May,        // 4
  June,       // 5
  July        // 6
}

static void Main(string[] args)
{
  int myNum = (int) Months.April;
  Console.WriteLine(myNum);
}
```

```.out
3
```

Can also assign own enum values, and the next items will update their number accordingly:

```.cs
enum Months
{
  January,    // 0
  February,   // 1
  March=6,    // 6
  April,      // 7
  May,        // 8
  June,       // 9
  July        // 10
}

static void Main(string[] args)
{
  int myNum = (int) Months.April;
  Console.WriteLine(myNum);
}
```

```.out
7
```

Enums are often used in `switch` statements to check for corresponding values:

```.cs
enum Level
{
  Low,
  Medium,
  High
}

static void Main(string[] args)
{
  Level myVar = Level.Medium;
  switch(myVar)
  {
    case Level.Low:
      Console.WriteLine("Low level");
      break;
    case Level.Medium:
       Console.WriteLine("Medium level");
      break;
    case Level.High:
      Console.WriteLine("High level");
      break;
  }
}
```

```.out
Medium level
```

Why and when to use enums?

Use enums when have values that know aren't going to change, like month days, days, colors, deck of cards, etc

### Files

The `File` class from the `System.IO` namespace, allows us to work with files:

```.cs
using System.IO;  // include the System.IO namespace

File.SomeFileMethod();  // use the file class with methods
```

The `File` class has many useful methods for creating and getting information about files. For example:

| Method         | Description                                                                                           |
| -------------- | ----------------------------------------------------------------------------------------------------- |
| AppendText()   | Appends text at the end of an existing file                                                           |
| Copy()         | Copies a file                                                                                         |
| Create()       | Creates or overwrites a file                                                                          |
| Delete()       | Deletes a file                                                                                        |
| Exists()       | Tests whether the file exists                                                                         |
| ReadAllText()  | Reads the contents of a file                                                                          |
| Replace()      | Replaces the contents of a file with the contents of another file                                     |
| WriteAllText() | Creates a new file and writes the contents to it. If the file already exists, it will be overwritten. |

Full list of File methods, [Microsoft .Net File Class Reference](https://learn.microsoft.com/en-us/dotnet/api/system.io.file?view=netframework-4.8)

Below example, use `WriteAllText()` method to create a file named "filename.txt" and write some contact to it. Then we use the `ReadAllText()` method to read the contents of the file:

```.cs
using System.IO;  // include the System.IO namespace

string writeText = "Hello World!";  // Create a text string
File.WriteAllText("filename.txt", writeText);  // Create a file and write the content of writeText to it

string readText = File.ReadAllText("filename.txt");  // Read the contents of the file
Console.WriteLine(readText);  // Output the content
```

```.out
Hello World!
```

### Exceptions - Try..Catch

When executing C# code, different errors can occur: coding errors made by the programmer, errors due to wrong input, or other unforeseeable things

The `try` statement allows you to define a block of code to be tested for errors while it is being executed

The `catch` statement allows you to define a block of code to be executed, if an error occurs in the try block

The `try` and `catch` keywords come in pairs:

```.cs
try
{
  //  Block of code to try
}
catch (Exception e)
{
  //  Block of code to handle errors
}
```

Below example, where we create an array of three integers:

```.cs
int[] myNumbers = {1, 2, 3};
Console.WriteLine(myNumbers[10]); // error!
```

```.out
System.IndexOutOfRangeException: 'Index was outside the bounds of the array.'
```

If an error occurs, can use `try...catch` to catch the error and execute some code to handle it

Below example, use the variable inside the catch block (e) together with the built-in `Message` property, which outputs a message that describes the exception:

```.cs
try
{
  int[] myNumbers = {1, 2, 3};
  Console.WriteLine(myNumbers[10]);
}
catch (Exception e)
{
  Console.WriteLine(e.Message);
}
```

```.out
Index was outside the bounds of the array.
```

Can also output own error message:

```.cs
try
{
  int[] myNumbers = {1, 2, 3};
  Console.WriteLine(myNumbers[10]);
}
catch (Exception e)
{
  Console.WriteLine("Something went wrong.");
}
```

```.out
Something went wrong.
```

The `finally` statement execute code, after `try...catch`, regardless of the result:

```.cs
try
{
  int[] myNumbers = {1, 2, 3};
  Console.WriteLine(myNumbers[10]);
}
catch (Exception e)
{
  Console.WriteLine("Something went wrong.");
}
finally
{
  Console.WriteLine("The 'try catch' is finished.");
}
```

```.out
Something went wrong.
The 'try catch' is finished.
```

The `throw` statement allows to create a custom error

The `throw` statement is used together with an exception class. There are many exception classes available in C#: `ArithmeticException`, `FileNotFoundException`, `IndexOutOfRangeException`, `TimeOutException`, etc:

```.cs
static void checkAge(int age)
{
  if (age < 18)
  {
    throw new ArithmeticException("Access denied - You must be at least 18 years old.");
  }
  else
  {
    Console.WriteLine("Access granted - You are old enough!");
  }
}

static void Main(string[] args)
{
  checkAge(15);
}
```

```.out
System.ArithmeticException: 'Access denied - You must be at least 18 years old.'
```

if `age` was 20 for above, would not get an exception:

```.cs
checkAge(20);
```

```.out
Access granted - You are old enough!
```
