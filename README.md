# SwiftDictionary
Swift Playground

## 1. Properties
### 1.1 Stored properties
Properties hold values with a particular class, structure, or (only for computed properties) enumeration.

#### 1.1.1 Lazy Stored Properties

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

## 2. Property Observers


## 3. Optionals

### unwrapping 

### implicitly unwrapped

### optional chaining

### optional bindings/value binding

## closures

### trailing closures

### escaping closures

## default initializers 



## default values in func args

## type inference

## subscripts

## raw values in enums

## associated values in enums
