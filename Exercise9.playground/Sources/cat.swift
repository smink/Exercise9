import Foundation

public class Cat{
    var breed = ""
    var color = ""
    var age = 0
    var name = ""
    
    
    internal weak var owner: Owner?
    
    
    init(name: String, breed: String, color: String, age: Int, owner: Owner!){
        self.name = name
        self.breed = breed
        self.color = color
        self.age = age
        self.owner = owner
    }
    
    public convenience init (name: String, breed: String){
        self.init (name: name, breed: breed, color: "Gray", age: 0, owner: nil)
    }
    
    public func meowing(){
        print("Cat \(name) is meowing")
    }
    public func eating(){
        print("Cat \(name) is eating")
    }
    public func sleeping(){
        print("Cat \(name) is sleeping")
    }
    public func playing(){
        print("Cat \(name) is playing")
        
    }
    public func chase(dog: Dog){
        print("Cat \(name) is chasing Dog \(dog.name)")
    }
}
