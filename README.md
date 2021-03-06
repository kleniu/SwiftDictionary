# SwiftDictionary
Swift Playground

## 1. Properties
Properties hold values within a particular class, structure, or (only for computed properties) enumeration.

### 1.1 Stored properties
In its simplest form, a stored property is a constant or variable that is stored as part of an instance **of a class or structure** _not! enum_. 

#### 1.1.1 Lazy Stored Properties
A lazy stored property is a property whose initial value is not calculated until the first time it is used. Lazy properties are useful when the initial value for a property is dependent on outside factors whose values are not known until after an instance’s initialization is complete.
```
class myClass {
    lazy var myData = DataSourceFromNet()
    // the myClass class would provide its own methods here
}
```

### 1.2 Computed properties
In addition to stored properties, classes, structures, and enumerations can define _computed properties_, **which do not actually store a value.** Instead, they provide a getter and an optional setter to retrieve and set **other properties**.
If a computed property’s **setter does not define a name for the new value to be set, a default name of newValue is used**.
```
struct MyStruct {
    var myComputedProperty: String {
        set(passedValue) {                                     // if you use: "set {.." instead of "set(passedValue) {.."
            myPrivateStoredProperty = passedValue.uppercased() // then you can use newValue to retrive value to be set
        }
        get {
            return myPrivateStoredProperty
        }
    }
    private var myPrivateStoredProperty: String = ""
}

var test: MyStruct = MyStruct()
test.myComputedProperty = "Hello!" // setting Hello!
print(test.myComputedProperty)     // returns HELLO!
```

#### 1.2.1 Read-Only Computed Properties
A computed property with a getter but **no setter** is known as a read-only computed property. You can simplify the declaration of a read-only computed property by removing the get keyword and its braces.
```
struct MyStruct {
    var description: String {
        return "Simple struct with single property which has value='\(myStoredProperty)'"
    }
    var myStoredProperty: String = ""
}

var test: MyStruct = MyStruct()
test.myStoredProperty = "Hello!"
print(test.description)          // returns Simple struct with single property which has value='Hello!'
```

### 1.3 Property Observers

## 2. Enums

### 2.1 Raw values in enums
Enumeration cases can come prepopulated with default values (***called raw values***). To access raw values use **rawValue** property.
```
enum myEnum:Int {
    case one   = 1
    case two   = 2
    case three = 3
}

var x = myEnum.one.rawValue
print(x) // will print: 1
```







## Optionals

### unwrapping 

### implicitly unwrapped

### optional chaining

### optional bindings/value binding

## closures

local variables in the closures
```
private var foo = { [week myWeekLocalVar = "test string"] in
	// use myWeekLocalVar here
}
```

### trailing closures

### escaping closures

## default initializers 



## default values in func args

## type inference

## subscripts



## associated values in enums
