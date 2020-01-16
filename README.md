# Random Values

A way to create random values for not only Apples built in types, but also for your own types

### Example

Let's say that we have the following struct:

```
struct Person {
  let name: String
  let age: Int
}
```
You can generate random values for this by doing the following:

```
extension User: RandomValueSimple {
    static func wrappedRandom() -> () -> User {
        return { User(name: .random(), age: .random()) }
    }
}
```
The `.random()` functions return a set default value and can be inferred. However if have a struct that has many properties, then having to use `.ranndom()`, `.random()`, `.random()` would get tedious. So a better way is to use the `makeRandom` function. Let's look at an example:
```
struct User {
    let name: String
    let age: Int
    let score: Int
    let team: String
}

extension User: RandomValueSimple {
    static func wrappedRandom() -> () -> User {
        return makeRandom(User.init)
    }
}
```
### Limitations
- At this point it can only support struct with up to 10 properties. Though this can be extended. Looking for a way to extend this without so much boiler plate code.
- Missiing defaults for properties such as `URL` which are common on structs.
