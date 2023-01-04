import Foundation

// estruturas em swift e uma maneira de agrupar dado junto e dar um nome para o mesmo
// estruturas em swift sao value types, quando voce instancia ela em outra variavel a estrutura e copiada

struct Person {
    let name: String
    let age: Int
}


let foo = Person(
    name: "Henrique",
    age: 25
)

foo.name
foo.age


struct CommodoreComputer {
    let name: String
    let manufacturer: String
}

let c64 = CommodoreComputer(
    name: "My commodore",
    manufacturer: "Commodore"
)
let c128 = CommodoreComputer(name: "My commodore 123", manufacturer: "Commmodore")

// pra colocar uma funcao na structure devemos usar a palavra reservada init, o swift ja vai entender que e uma funcao
struct IBMComputer {
    let name: String
    let manufacturer: String
    init(name: String){
        //detalhe importante, devemos colocar o self para a funcao intender que e a prop da prorpia structure
        self.name = name
        self.manufacturer = "IBM"
    }
}

let b64 = IBMComputer(name: "C64")
b64.name
b64.manufacturer

struct Person2 {
    let firstName: String
    let lastName: String
    let fullName: String
    var inverseName: String {
        "\(lastName) \(firstName)"
    }
    init(
        firstName: String,
        lastName: String
    ){
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = "\(firstName) \(lastName)"
    }
}


let henrique = Person2(firstName: "Henrique", lastName: "Franco")
henrique.fullName
henrique.inverseName
//estruturas nao permitem mutacoes da maneira como sao concebidas no swift

//mas temos uma maneira de fazer mutacoes na structures

struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int){
        "Driving at ..."
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)
immutableCar.currentSpeed
//immutableCar.drive(speed: 100)

var mutableCar = Car(currentSpeed: 60)
let copy = mutableCar
mutableCar.currentSpeed
mutableCar.drive(speed: 100)
mutableCar.currentSpeed


copy.currentSpeed


struct LivingThing {
    init() {
        "I'm a living thing"
    }
}
//structures nao podem herdar de outra structure
//struct Animal: LivingThing{
//
//}


struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike{
        Bike(
            manufacturer: self.manufacturer,
            currentSpeed: currentSpeed
        )
    }
}

let bike1 = Bike(
    manufacturer: "HD", currentSpeed: 20
)

let bike2 = bike1.copy(currentSpeed: 30)
bike1.currentSpeed
bike2.currentSpeed
