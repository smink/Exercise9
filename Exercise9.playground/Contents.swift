/*:
 - - -
* callout(Exercise): Build upon your `Dog` and `Cat` classes in the previous exercise by applying the appropriate access control for each class/structure member. Add a `Owner` class that contains a collection of `Dog` instances and `Cat` instances. Have your `Dog` and `Cat` hold the correct reference type to an `Owner` instance. The `Ower` property of the `Cat` instance reference is optional. Provide a `subscript` to interact with your `Dog` and `Cat` instances.

**Constraints:**
- Use `weak`
- Use `unowned`
- Use `subscript`
- Create a `convenience` initializer for creating your `Dog` and `Cat` instance
*/

import Foundation
//import UIKit

var owner1: Owner? = Owner(name: "Scott")
var owner2: Owner? = Owner(name: "Jen")

owner1!.addDog(Dog(name: "Fido", breed: "Mutt", owner: owner1!))
print(owner1!.description)

owner1 = nil

let cat1 = Cat(name: "Dax", breed: "Tabby")
cat1.meowing()

//dog1.chase(cat1)
//cat1.chase(dog1)
cat1.chase(Dog(name: "Gretchen", breed: "", owner: owner2!)) // deinit called since Dog is not retained






