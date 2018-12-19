# SwiftDictionary
Swift Playground

## 1. Computed properties
In addition to stored properties, classes, structures, and enumerations can define _computed properties_, **which do not actually store a value.** Instead, they provide a getter and an optional setter to retrieve and set **other properties**.
```
struct MyStruct {
    var myComputedProperty: String {
        set(passedValue) {
            myPrivateStoredProperty = passedValue.uppercased()
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

### 1.1. Read-Only Computed Properties
A computed property with a getter but **no setter** is known as a read-only computed property. 
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

### 1.2. Property Observers


## 2. optionals

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
