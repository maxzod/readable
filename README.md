# **`Q U E E N 👑`**
[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)

## **`readable`**

<a href="https://pub.dev/packages/readable"><img src="https://img.shields.io/pub/v/readable?style=for-the-badge" alt="Pub"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/maxzod/readable?style=for-the-badge" alt="License: MIT"></a><a href="https://img.shields.io/github/issues/FlutterQueen/readable"><img src="https://img.shields.io/github/issues/maxzod/readable?logo=queen&style=for-the-badge" alt="issues"></a><a href="https://img.shields.io/github/issues-pr/FlutterQueen/readable"><img src="https://img.shields.io/github/issues-pr/maxzod/readable?style=for-the-badge" alt="Pull requests"></a><a href="https://img.shields.io/github/issues/FlutterQueen/readable"><img src="https://img.shields.io/github/forks/maxzod/readable?style=for-the-badge" alt="forks"></a><a href="https://img.shields.io/github/issues/maxzod/readable"><img src="https://img.shields.io/github/stars/FlutterQueen/readable?style=for-the-badge" alt="Starts"></a>
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

## What is `readable`

a collection of helpers and extension methods for dart flutter

## Why use `readable`

### Save time and effort

- no more helpers or extensions scattered in the project .
- helpers already built and ready to be used out of the box .
- you will find many uses cases where `readable` can be helpful

```dart
 /// for flutter

 Widget build(BuildContext context){
    /// Before ::
    final width = MediaQuery.of(context).size.width;
    /// After::
    final width = context.width;


    /// Before ::
    final h1 = Theme.of(context).textTheme.headline1;
    /// After::
    final h1 = context.headline1;
 
 }
```

```dart
/// for dart
  final data = [1,2,3,4,5];
  final total = data.sum(); // 15

  final minimNumber = data.min(); // 1

  final maximumNumber = data.max(); // 5

  final average = data.average(); // 3
  // ...etc
```

### Readability

- the extensions are built to be easy-to-read and understand .
- it do what it says literally

```dart
  /// BEFORE ::
  final firstUser = users.isEmpty ? null : user.first
  /// AFTER ::
  final firstUser = users.firstOrNull();  /// return the first if the list is not empty else return null

  final dateSTR '10-11-2017';
  /// will convert the string to `DateTime`
  /// is not valid will throw `FormatException`
  final DateTime date = dateStr.toDate();

  /// will convert the string to `DateTime` if the string is not valid will return null
  final DateTime? date = dateStr.toDateOrNull();

  /// if cant convert will return otherDate value
  final DateTime date = dateStr.toDateOr(otherDate);

  /// if cant convert will return now
  final DateTime date = dateStr.toDateOrNow();

  /// ...etc
```

### Stable

unlike other helpers you build in different projects most likely will not test and maintain them ,
BUT `readable` comes with 100% test coverage .

## how to use them

readable is part of queen you already have readable ready out of the box in any file that imports queen

```dart
import 'package:queen/queen.dart`;
```

Example ::

```dart
Widget build(BuildContext context){
  /// replace the shortcut with any from below
  final result = context.shortcut;
  /// not just `BuildContext` you can use it with any other data type
  final numbers = [1,2,3,4,5];

  final average = numbers.average(); // 3

 }
```

## QMediaQueryX on `BuildContext`

### width

```dart
/// Before ::
final width = MediaQuery.of(context).size.width;
/// After ::
final width = context.width;
```

### height

```dart
/// Before ::
final height = MediaQuery.of(context).size.height;
/// After ::
final height = context.height;
```

### aspectRatio

```dart
/// Before ::
final aspectRatio = MediaQuery.of(context).size.aspectRatio;
/// After ::
final aspectRatio = context.aspectRatio;
```

### orientation

```dart
/// Before ::
final orientation = MediaQuery.of(context).orientation;
/// After ::
final orientation = context.orientation;
```

### isLandscape , isPortrait

```dart
/// Before ::
final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
/// After ::
final isLandscape = context.isLandscape;
final isPortrait = context.isPortrait;
```

## QXLocalization

### isRtl , isLtr

```dart
/// Before ::
final isRtl = Directionality.of(this) == TextDirection.rtl;
final isLtr = Directionality.of(this) == TextDirection.ltr;

/// After ::
final isRtl = context.isRtl;
final isLtr = context.isLtr;

```

## QXNavigator

### canPop

```dart
/// Before ::
final canPop = Navigator.of(context).canPop();
/// After ::
final canPop = context.canPop;

```

## QXTextTheme

### bodyText1 , bodyText2

```dart
/// Before ::
final bodyText1 = Theme.of(context).textTheme.bodyText1;
final bodyText2 = Theme.of(context).textTheme.bodyText2;
/// After ::
final bodyText1 = context.bodyText1;
final bodyText2 = context.bodyText2;

```

### button

```dart
/// Before ::
final button = Theme.of(context).textTheme.button;
/// After ::
final button = context.button;

```

### caption

```dart
/// Before ::
final caption = Theme.of(context).textTheme.caption;
/// After ::
final caption = context.caption;

```

### headline1 ,2,3,4,5,6

```dart
/// Before ::
final headline1 = Theme.of(context).textTheme.headline1;
final headline2 = Theme.of(context).textTheme.headline2;
final headline3 = Theme.of(context).textTheme.headline3;
final headline4 = Theme.of(context).textTheme.headline4;
final headline5 = Theme.of(context).textTheme.headline5;
final headline6 = Theme.of(context).textTheme.headline6;

/// After ::
final headline1 = context.headline1;
final headline2 = context.headline2;
final headline3 = context.headline3;
final headline4 = context.headline4;
final headline5 = context.headline5;
final headline6 = context.headline6;

```

### overline

```dart
/// Before ::
final overline = Theme.of(context).textTheme.overline;

/// After ::
final overline = context.overline;
```

### subtitle1 , subtitle2

```dart
/// Before ::
final subtitle1 = Theme.of(context).textTheme.subtitle1;
final subtitle2 = Theme.of(context).textTheme.subtitle2;

/// After ::
final subtitle1 = context.subtitle1;
final subtitle2 = context.subtitle2;
```

## QXTheme

### isDark , isLight

```dart
/// Before ::
final isDark = Theme.of(context).brightness ==  Brightness.dark;
final isLight = Theme.of(context).brightness ==  Brightness.light;

/// After ::
final isDark = context.isDark;
final isLight = context.isLight;
```

## on `String`

### reversed

revers the string characters

```dart
final name = 'queen';
print(name.reversed); // neeuq
```

### palindrome

Checks if string is Palindrome

```dart
final name = 'queen';
print(name.isPalindrome); // false
print('queenneeuq'.isPalindrome);//true
```

### capitalizeFirst

Uppercase first letter inside string and let the others lowercase
Example: your name => Your name

```dart
final name = 'queen';
print(name.capitalizeFirst); // Queen
```

### capitalize

Uppercase first letter inside each word in string
Example: your name => Your Name

```dart
final name = 'flutter queen';
print(name.capitalize); //Flutter Queen
```

### linesCount

string lines count

```dart
final name = 'flutter queen';
print(name.linesCount); //1
```

### last

returns last symbol of string or empty string if `this` is null or empty

```dart
final name = 'flutter queen';
print(name.last); //n
```

### replaceAfter

Replaces part of string after the first occurrence of given delimiter with the [replacement] string.
If the string does not contain the delimiter, returns [defaultValue] which defaults to the original string.

```dart
final name = 'flutter******';
print(name.replaceAfter('r', '')); //flutter
```

### replaceBefore

Replaces part of string before the first occurrence of given delimiter with the [replacement] string.
If the string does not contain the delimiter, returns [missingDelimiterValue!] which defaults to the original string.

```dart
final name = 'flutter******';
print(name.replaceBefore('*', '')); //******
```

### anyChar

Returns `true` if at least one element matches the given [predicate].
the [predicate] should have only one character

```dart
final name = 'flutter queen';
print(name..anyChar((element) => element == 't'); //true
```

## on `TimeOfDay`

### isAm , isPm

```dart
final tod=  TimeOfDay(hour: 15, minute: 0);
final isAm = tod.isAm;  // false
final isPm = tod.isPm;  // true
```

### isAfter

### isBefore

### isBetween

### copyWith

### in12Format

## on `ReadableListX`

### count

```dart
/// alias for `length`
final items =[1,2,3,4];
print(items.count()); // 4
```

### countWithoutNull

```dart
/// return the `length` without `null` elements

final items =[1,2,null,3,null,4,null,null,null,];
print(items.countWithoutNull()); // 4
```

### loop

since forEach does noe support async
now you have it in

```dart
// async for each
Future<void> load()async {

final numbers = [1, 2, 3, 4, 5, 6];
await numbers.loop((e) async{
        await Future.delayed(Duration(seconds: 1));
        print(e);
      });
print('last');
/// the output is
/// 1
/// 2
/// 3
/// 4
/// 5
/// 6
/// lsat
}
```

### withoutDuplicate

```dart
/// * return a new `List` without duplicated `elements`
final items =[1,2,2,4,4];
print(items.withoutDuplicate()); // [1,2,4]
```

### random

return a random element from list

```dart
final items =[1,2,3];
print(items.random); // random item

final empty =[];
/// ! throws `StateError` if list is empty
print(items.random);

```

### firstOr

return first element if list is not empty
else return the default value

```dart
final items =[1,2,3];
print(items.firstOr(5)); // 1
print([].firstOr(5)); // 5
```

### firstOrNull

return the first element if list is not empty
else return null

```dart
final items =[1,2,3];
print(items.firstOrNull()); // 1
print([].firstOrNull()); // null
```

### lastOr

return last element if list is not empty
else return the default value

```dart
final items =[1,2,3];
print(items.lastOr(5)); // 3
print([].lastOr(5)); // 5
```

### lastOrNull

return the last element if list is not empty
else return null

```dart
final items =[1,2,3];
print(items.lastOrNull()); // 3
print([].lastOrNull()); // null
```

### atOr

return element by index
if index si out of range will return the value

```dart
final items =[1,2,3];
print(items.atOr(1,3)); // 2
print([].atOr(1,3)); // 3
```

### atOrNull

return element by index
if index out of range will return null

```dart
final items =[1,2,3];
print(items.atOrNull(1)); // 2
print([].atOrNull(1)); // null
```

### firstWhereOrNull

return the first match
else will return null

```dart
final items =[1,2,3];
print(items.firstWhereOrNull((e) => e % 2 == 0)); // 2
print([].firstWhereOrNull((e) => e % 2 == 0)); // null
```

### mapWithIndex

like `map()` function but now you have the index with the element

```dart
final items =[1,2,3];
print(items.mapWithIndex((index, e) => index)); // [0,1,2]

```

### takeUntil

The takeUntil method returns items in the collection until the given callback returns true
If callback never returns true, the takeUntil method will return all items in the collection.

```dart
final items =[1,2,3];
print(items.takeUntil((e) => e % 2 == 0)); // [2]
print(items.firstWhereOrNull((e) => e * 2 == 0)); // [1,2,3]
```

## on `List<num>`

## summation

### sumOrNull

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? sum = list.sumOrNull(); // 15

  /// return null if the list is empty
  final emptyList = <num>[];
  final num? sum = emptyList.sumOrNull(); // null

```

### sumOr

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? sum = list.sumOr(10); // 15

  /// return `value` if the list is empty
  final emptyList = <num>[];
  final num? sum = emptyList.sumOr(10); // 10

```

### sumOrZero

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? sum = list.sumOrZero(); // 15

  /// return `0` if the list is empty
  final emptyList = <num>[];
  final num? sum = emptyList.sumOr(); // 0

```

### sum

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? sum = list.sum(); // 15


  final emptyList = <num>[];
   /// ! throws `StateError` if isEmpty
  final num? sum = emptyList.sum();

```

## average

### averageOrNull

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.averageOrNull(); // 3

  /// return null if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.averageOrNull(); // null

```

### averageOr

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.averageOr(10); // 3

  /// return `value` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.averageOr(10); // 10

```

### sumOrZero

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.averageOrZero(); // 3

  /// return `0` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.averageOrZero(); // 0

```

### average

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.average(); // 3


  final emptyList = <num>[];
   /// ! throws `StateError` if isEmpty
  final num? result = emptyList.average();

```

## max

### maxOrNull

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.maxOrNull(); // 5

  /// return null if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.maxOrNull(); // null

```

### maxOr

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.maxOr(5); // 5

  /// return `value` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.maxOr(10); // 10

```

### maxOrZero

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.maxOrZero(); // 5

  /// return `0` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.maxOrZero(); // 0

```

### max

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.max(); // 5


  final emptyList = <num>[];
   /// ! throws `StateError` if isEmpty
  final num? result = emptyList.max();

```

## min

### minOrNull

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.minOrNull(); // 1

  /// return null if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.minOrNull(); // null

```

### minOr

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.minOr(5); // 1

  /// return `value` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.minOr(10); // 10

```

### minOrZero

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.minOrZero(); // 1

  /// return `0` if the list is empty
  final emptyList = <num>[];
  final num? result = emptyList.minOrZero(); // 0

```

### min

```dart
  final list = [1, 2, 3 ,4 ,5 ];
  final num? result = list.min(); // 1


  final emptyList = <num>[];
   /// ! throws `StateError` if isEmpty
  final num? result = emptyList.min();

```

## delayed durations

```dart
/// BEFORE::
await Future.delayed(const Duration(seconds:1));
/// AFTER::
await oneSecond();
```

you also have

- `oneSecond()`
- `twoSeconds()`
- `threeSeconds()`
- `fourSeconds()`
- `fiveSeconds()`
- `sixSeconds()`
- `sevenSeconds()`
- `eightSeconds()`
- `nineSeconds()`
- `tenSeconds()`
