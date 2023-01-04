import Foundation


let myName = "Henrique"
let yourName = "Vandad"

var names = [myName,yourName]


names.append("Foo")
names.append("Bar")
names = ["bla"]
 let foo = "Foo"
 var foo2 = foo
foo2 = "Foo 2"
foo
foo2
//nao ha o referenciamento na memoria, e sim um novo enderecamento

let someNames = NSMutableArray(
    array:[
    "Foo",
    "Bar"
    ]
)
func changeTheArray(_ array:NSArray){
    let copy = array as! NSMutableArray
}
