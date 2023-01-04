import  Foundation

let myAge = 25
let yourAge = 35

if myAge < yourAge {
    "Sou mais novo"
}else if myAge > yourAge{
    "sou mais velho"
}else{
    "temos a  mesma idade"
}
let myMotherAge = myAge + 30
let yourMotherAge = yourAge * 2


//unary prefix
let foo = !true
// no caso o operator e o !
//unary postfix
let name = Optional("Vandad")
let UnaryPostFix = name!
//binary infix
let yourMotherAge2 = yourAge * 2
// no caso o operador e o *, isso serve pra qualquer operador entre dois valores

//ternary operator
let age = 30

let message = age >= 18 ? "You are an adult " : "You arren't a adult"
