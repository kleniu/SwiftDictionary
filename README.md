# SwiftDictionary
Swift Playground

## computed properties
In addition to stored properties, classes, structures, and enumerations can define _computed properties_, **which do not actually store a value.** Instead, they provide a getter and an optional setter to retrieve and set **other properties**.
'''
struct PlayingCard {
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

var test: PlayingCard = PlayingCard()
test.myComputedProperty = "Hello!" // setting Hello!
print(test.myComputedProperty)     // returns HELLO!
'''

### Read-Only Computed Properties


## optionals

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
