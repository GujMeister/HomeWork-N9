import UIKit

// 1. შექმენით ენამი Gender სადაც იქნება 2 გენდერი (გენდერზე არ გამომეკიდოთ, თუ გინდათ მეტი ჩაამატეთ)
enum Gender {
    case female
    case male
}

// 2. შექმენით Protocol სახელად SuperBeing. გაუწერეთ მას ფროფერთები - name: String, strength: Int, speed: Int, weakness: String, gender: Gender
protocol SuperBeing {
    var name: String { get }
    var strength: Int { get }
    var speed: Int { get }
    var weakness: String { get }
    var gender: Gender { get }
}

// 3. SuperBeing-ის strength-სა და speed-ს მიეცით default მნიშვნელობა
extension SuperBeing {
    var strength: Int {
        5
    }
    var speed: Int {
        5
    }
}

// 4. შექმენით კლასები Superhero და SuperVillain, დაუქონფორმეთ SuperBeing-ს.
// 5. გაუწერეთ Superhero კლასს დამატებითი პარამეტრები outfitColor: String, equipment: String, vehicle: String
// 6. გაუწერეთ Superhero კლასს მეთოდი - rescue, რომელიც პარამეტრად მიიღებს დაზარალებულის სახელს და დაბეჭდავს - “‘სუპერგმირის სახელი’ არ შეუშინდა სახიფათო სიტუაციას და ‘დაზარალებულის სახელი’ გადაარჩინა სიკვდილს” (მაგ: “ბეტმენი” არ შეუშინდა სახიფათო სიტუაციას და “გელა” გადაარჩინა სიკვდილს).
// 7. გაუწერეთ Superhero კლასს მეთოდი - combat, რომელიც პარამეტრად მიიღებს Supervillain-ს და დაბეჭდავს - “‘სუპერგმირის სახელი’ შეერკინა და დაამარცხა ‘ბოროტმოქმედის სახელი’” (მაგ: “ბეტმენი” შეერკინა და დაამარცხა “ჯოკერი”).

class SuperHero: SuperBeing {
    var name: String
    var strength: Int
    var speed: Int
    var weakness: String
    var gender: Gender
    var outfitColor: String
    var equipment: String
    var vehicle: String
    
    init(name: String, strength: Int, speed: Int, weakness: String, gender: Gender, outfitColor: String, equipment: String, vehicle: String) {
        self.name = name
        self.strength = strength
        self.speed = speed
        self.weakness = weakness
        self.gender = gender
        self.outfitColor = outfitColor
        self.equipment = equipment
        self.vehicle = vehicle
    }
}

// მეთოდები მათი შესრულებილი საქმისამებრ ექსთენშენში გავიტანე, კოდის წაკითხულობის მიზნით
extension SuperHero {
    func rescue(personNamed: String) {
        print("\(name) არ შეუშინდა სახიფათო სიტუაციას და \(personNamed) გადაარჩინა სიკვდილს")
    }
    
    func combat(villian: SuperVillain) {
        print("\(name) შეერკინა და დაამარცხა \(villian.name)")
    }
}

// 8. გაუწერეთ SuperVillain კლასს დამატებითი პარამეტრები evilScheme: String, obsession: String, rivalry: String
// 9. გაუწერეთ SuperVillain კლასს მეთოდი - attack - რომელიც პარამეტრად მიიღებს Superhero-ს და დაბეჭდავს - “ბოროტმ. სახელი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “სუპერგმირის სახელი” მის შეჩერებას თუ შეძლებს” (მაგ: “ჯოკერი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “ბეტმენი” მის შეჩერებას თუ შეძლებს)
// 10. გაუწერეთ SuperVillain კლასს მეთოდი experimentation - რომელიც პარამეტრად მიიღებს სტრინგს (subject) და დაბეჭდავს - “‘ბოროტმოქმედის სახელი’ ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად ‘მსხვერპლის სახელი’ აღმოჩნდა” (მაგ: “ჯოკერი” ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად “გელა” აღმოჩნდა)

class SuperVillain: SuperBeing {
    var name: String
    var strength: Int
    var speed: Int
    var weakness: String
    var gender: Gender
    var evilScheme: String
    var obsession: String
    var rivalry: String
    var favouriteSaying: String? // ჰარვი დენტისთვის დავამატე ეს პარამეტრი
    
    init(name: String, strength: Int, speed: Int, weakness: String, gender: Gender, evilScheme: String, obsession: String, rivalry: String, favouriteSaying: String? = nil) {
        self.name = name
        self.strength = strength
        self.speed = speed
        self.weakness = weakness
        self.gender = gender
        self.evilScheme = evilScheme
        self.obsession = obsession
        self.rivalry = rivalry
        self.favouriteSaying = favouriteSaying
    }
}

extension SuperVillain {
    func attack(superHero: SuperHero) {
        print("\(name) გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა \(superHero.name) მის შეჩერებას თუ შეძლებს")
    }
    
    func experimentation(on subject: String) {
        print("\(name) ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად \(subject) აღმოჩნდა")
    }
}

// 11. შექმენით მინიმუმ 5-5 ობიექტი თითოეული SuperBeing-ის დაქონფირმებული კლასებიდან

var superHeroList: [SuperHero] = [
    SuperHero(name: "Pun-isher", strength: 4, speed: 2, weakness: "Awkward silence after his puns", gender: .male, outfitColor: "Purple", equipment: "Glock and a sharp notebook", vehicle: "Public Transport"),
    SuperHero(name: "Batman", strength: 8, speed: 8, weakness: "Orphan", gender: .male, outfitColor: "Black", equipment: "Batarangs, Utility Belt", vehicle: "Batmobile"),
    SuperHero(name: "Iron Man", strength: 7, speed: 8, weakness: "Low Battery Anxiety", gender: .male, outfitColor: "Red and Gold", equipment: "Iron Man Armor, Gadgets", vehicle: "Iron Man suits"),
    SuperHero(name: "Aquaman", strength: 6, speed: 7, weakness: "No Aqua", gender: .male, outfitColor: "Green", equipment: "Trident", vehicle: "Using water creatures as a surfboard"),
    SuperHero(name: "She-Hulk", strength: 10, speed: 6, weakness: "An honest days work", gender: .female, outfitColor: "Green", equipment: "These hands", vehicle: "Flying Car")
]

var superVillianList: [SuperVillain] = [
    SuperVillain(name: "The Joker", strength: 6, speed: 6, weakness: "Not having an identitiy without Batman", gender: .male, evilScheme: "To create chaos and anarchy in Gotham City", obsession: "Spreading madness", rivalry: "Batman"),
    SuperVillain(name: "Catwoman", strength: 7, speed: 7, weakness: "Her love for Batman", gender: .female, evilScheme: "To acquire wealth", obsession: "Cats", rivalry: "Batman"),
    SuperVillain(name: "Harley Quinn", strength: 4, speed: 6, weakness: "Love for Joker", gender: .female, evilScheme: "Help Joker with his plans", obsession: "Joker and Chaos", rivalry: "Batman"),
    SuperVillain(name: "The Riddler", strength: 7, speed: 7, weakness: "Leaving Clues for Batman", gender: .male, evilScheme: "Outsmart Batman while causing Chaos", obsession: "Proving his intellectual superiority", rivalry: "Batman"),
    SuperVillain(name: "Harvey Dent/Two-Face", strength: 6, speed: 5, weakness: "His dual personality", gender: .male, evilScheme: "Bring chaos to the city using Chance-Based crimes", obsession: "The concept of duality", rivalry: "Batman", favouriteSaying: "მონეტას ორი მხარე აქვს")
]

// ერთი პატარა ისტორია მოვყვეთ

let batman = superHeroList[1]
let joker = superVillianList[0]

joker.experimentation(on: "ზვიო")
joker.attack(superHero: batman)
batman.rescue(personNamed: "ზვიო")
batman.combat(villian: joker)
