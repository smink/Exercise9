import Foundation

public class Dog{
    
    internal unowned var owner: Owner
    
    public var breed = ""
    public var color = ""
    public var age = 0
    
    public var name: String = "" {
        didSet{
            print("Dog \(oldValue) was renamed to \(name)")
        }
    }
    
    public var yearBorn: Int {
        get {
            let date = NSDate()
            let calendar = NSCalendar.currentCalendar()
            let components = calendar.components(NSCalendarUnit.Year, fromDate: date)
            return components.year - age
        }
    }
    
    public init (name: String, breed: String, owner: Owner){
        self.name = name
        self.breed = breed
        self.owner = owner
    }
    deinit{
        print("Dog \(name) ran away")
    }
    public func barking(){
        print("Dog \(name) is barking")
    }
    public func eating(){
        print("Dog \(name) is eating")
    }
    public func sleeping(){
        print("Dog \(name) is sleeping")
    }
    public func playing(){
        print("Dog \(name) is playing")
    }
    public func chase(cat: Cat){
        print("Dog \(name) is chasing Cat \(cat.name)")
    }
    
}
