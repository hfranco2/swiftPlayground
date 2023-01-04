import Foundation

func oi (){
    print(
        "eu nao sei oque to fazendo"
    )
}
oi()
func plusTwo(value : Int){
    value + 2
}

plusTwo(value: 30)

func newPlusTwo(value : Int) ->Int{
    value + 2
}

newPlusTwo(value: 30)


func customAdded(
    value1 : Int,
    value2: Int
)
->Int{
    value1 + value2
}

let result1 = customAdded(value1: 30, value2: 20)


func customSub(
   _ value1 : Int,
   _ value2: Int
)
->Int{
    value1 - value2
}

let result = customSub(30, 20)
